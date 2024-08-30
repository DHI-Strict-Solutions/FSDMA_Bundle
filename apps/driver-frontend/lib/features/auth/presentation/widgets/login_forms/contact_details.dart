import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/auth/presentation/blocs/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/rounded_checkbox.dart';

class ContactDetails extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final LoginState state;

  ContactDetails({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final loginBloc = locator<LoginBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  FormField<Gender>(
                    initialValue: state.profileFullEntity?.gender,
                    onSaved: (newValue) => loginBloc.onGenderChanged(newValue!),
                    builder: (state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.translate.gender,
                            style: context.titleSmall,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: Gender.values
                                .map(
                                  (e) => CupertinoButton(
                                    minSize: 0,
                                    onPressed: () => state.didChange(e),
                                    padding: const EdgeInsets.all(0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        RoundedCheckbox(
                                          isSelected: state.value == e,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          e.title(context),
                                          style: context.bodyLarge,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          )
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.firstName,
                    validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                    onSaved: loginBloc.onFirstNameChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.firstName,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.lastName,
                    validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                    onSaved: loginBloc.onLastNameChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.lastName,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.certificateNumber,
                    onSaved: loginBloc.onCertificateNumberChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.driverLicenseNumber,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.email,
                    onSaved: loginBloc.onEmailChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.email,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.address,
                    onSaved: loginBloc.onAddressChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.address,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
        AppPrimaryButton(
          onPressed: () {
            if (formKey.currentState?.validate() == true) {
              formKey.currentState?.save();
              loginBloc.onConfirmContactDetailsPressed();
            }
          },
          child: Text(context.translate.confirm),
        )
      ],
    );
  }
}
