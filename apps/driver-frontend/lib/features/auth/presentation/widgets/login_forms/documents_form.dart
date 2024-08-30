import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/datasources/upload_datasource.dart';
import 'package:collection/collection.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/auth/presentation/blocs/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:flutter_common/core/presentation/upload_image_field.dart';

class DocumentsForm extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final LoginState state;

  DocumentsForm({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final loginBloc = locator<LoginBloc>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Your face should be recognizable in the image",
                    style: context.bodyMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  UploadImageField(
                    validator: (p0) => p0 == null ? "Please upload your profile picture" : null,
                    initialValue: state.profileFullEntity?.profilePicture,
                    onSaved: (value) => locator<LoginBloc>().onProfilePhotoChanged(value),
                    uploadButtonText: context.translate.uploadImage,
                    fileUploader: locator<UploadDatasource>().uploadProfilePicture,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Required documents",
                    style: context.titleLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "In order to verification above documents we require below documents uploaded \n1-ID \n2-Driver License \n3-ride’s ownership document",
                    style: context.bodyMedium,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FormField<List<MediaEntity>>(
                      initialValue: state.profileFullEntity?.documents ?? [],
                      onSaved: (newValue) => locator<LoginBloc>().setDocuments(newValue ?? []),
                      builder: (fieldState) => Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          ...fieldState.value?.mapIndexed(
                                (index, e) => UploadImageField(
                                  initialValue: e,
                                  shape: BoxShape.rectangle,
                                  borderRadius: 12,
                                  onChanged: (newValue) {
                                    if (newValue != null) {
                                      fieldState.value![index] = newValue;
                                      fieldState.didChange(fieldState.value);
                                    }
                                  },
                                  uploadButtonText: context.translate.uploadImage,
                                  fileUploader: locator<UploadDatasource>().uploadDocument,
                                ),
                              ) ??
                              [],
                          UploadImageField(
                            onChanged: (newValue) {
                              if (newValue != null) {
                                fieldState.didChange(fieldState.value?.followedBy([newValue]).toList());
                              }
                            },
                            uploadButtonText: context.translate.uploadImage,
                            shape: BoxShape.rectangle,
                            borderRadius: 16,
                            fileUploader: locator<UploadDatasource>().uploadDocument,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ),
          AppPrimaryButton(
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                formKey.currentState?.save();
                loginBloc.onConfirmDocumentsPressed();
              } else {
                context.showSnackBar(message: "Please upload all required documents");
              }
            },
            child: Text(
              context.translate.confirm,
            ),
          ),
        ],
      ),
    );
  }
}
