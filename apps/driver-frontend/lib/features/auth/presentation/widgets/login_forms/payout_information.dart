import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/auth/presentation/blocs/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';

class PayoutInformation extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey();
  final LoginState state;

  PayoutInformation({
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
                  TextFormField(
                    initialValue: state.profileFullEntity?.bankName,
                    onSaved: loginBloc.onBankNameChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.bankName,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.bankRoutingNumber,
                    onSaved: loginBloc.onBankRoutingNumberChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.bankRoutingNumber,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.bankAccountNumber,
                    onSaved: loginBloc.onBankAccountNumberChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.bankAccountNumber,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: state.profileFullEntity?.bankSwiftCode,
                    onSaved: loginBloc.onBankSwiftCodeChanged,
                    decoration: InputDecoration(
                      hintText: context.translate.bankSwift,
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
              loginBloc.onConfirmPayoutInformationPressed();
            }
          },
          child: Text(context.translate.confirm),
        )
      ],
    );
  }

  Widget actionButtons(BuildContext context) {
    return AppPrimaryButton(
      onPressed: () {},
      child: Text(context.translate.actionContinue),
    );
  }
}
