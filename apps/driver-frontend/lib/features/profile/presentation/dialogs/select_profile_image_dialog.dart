import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/datasources/upload_datasource.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/upload_image_field.dart';
import 'package:driver_flutter/features/profile/domain/repositories/profile_repository.dart';

class SelectProfileImageDialog extends StatefulWidget {
  const SelectProfileImageDialog({super.key});

  @override
  State<SelectProfileImageDialog> createState() => _SelectProfileImageDialogState();
}

class _SelectProfileImageDialogState extends State<SelectProfileImageDialog> {
  MediaEntity? avatar;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isSaving = false;

  @override
  void initState() {
    avatar = locator<AuthBloc>().state.map(
          authenticated: (authenticated) => authenticated.profile.profilePicture,
          unauthenticated: (unauthenticated) => null,
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      header: (
        Ionicons.person_circle,
        context.translate.selectProfileImage,
        null,
      ),
      primaryButton: AppPrimaryButton(
        isDisabled: isSaving,
        onPressed: () async {
          formKey.currentState?.save();
          setState(() {
            isSaving = true;
          });
          final update = await locator<ProfileRepository>().uploadProfileImage(
            image: avatar!,
          );
          setState(() {
            isSaving = false;
          });
          update.fold(
            (l) => throw Exception('Error updating profile'),
            (r) {
              Navigator.of(context).pop();
            },
          );
        },
        child: Text(
          context.translate.saveChanges,
        ),
      ),
      child: Form(
        key: formKey,
        child: UploadImageField(
          initialValue: avatar,
          onSaved: (newValue) => avatar = newValue,
          uploadButtonText: context.translate.uploadImage,
          fileUploader: (path) {
            return locator<UploadDatasource>().uploadProfilePicture(path);
          },
        ),
      ),
    );
  }
}
