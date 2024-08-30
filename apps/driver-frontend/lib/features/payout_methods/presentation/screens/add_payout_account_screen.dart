import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_method.dart';
import 'package:driver_flutter/features/payout_methods/presentation/blocs/add_bank_transfer_payout_method_form_cubit.dart';
import 'package:driver_flutter/features/payout_methods/presentation/blocs/payout_accounts.dart';
import 'package:driver_flutter/features/payout_methods/presentation/components/app_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';

@RoutePage()
class AddPayoutAccountScreen extends StatefulWidget {
  final PayoutMethodEntity payoutMethod;

  const AddPayoutAccountScreen({
    super.key,
    required this.payoutMethod,
  });

  @override
  State<AddPayoutAccountScreen> createState() => _AddPayoutAccountScreenState();
}

class _AddPayoutAccountScreenState extends State<AddPayoutAccountScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    locator<AddBankTransferPayoutMethodFormCubit>().init(
      payoutMethodId: widget.payoutMethod.id,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = locator<AddBankTransferPayoutMethodFormCubit>();
    return BlocProvider.value(
      value: locator<AddBankTransferPayoutMethodFormCubit>(),
      child: Container(
        color: ColorPalette.neutralVariant99,
        padding: context.responsive(
          const EdgeInsets.all(16).copyWith(bottom: 0),
          xl: const EdgeInsets.all(16).copyWith(top: 96, bottom: 0),
        ),
        child: SafeArea(
          child: BlocConsumer<AddBankTransferPayoutMethodFormCubit, AddBankTransferPayoutMethodFormState>(
            listener: (context, state) {
              state.pageState.mapOrNull(
                success: (value) {
                  context.router.maybePop();
                  locator<AddBankTransferPayoutMethodFormCubit>().reset();
                  locator<PayoutAccountsBloc>().load();
                },
                error: (value) => context.showSnackBar(message: value.message),
              );
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTopBar(
                    title: context.translate.addPayoutMethod,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppFormField(
                              label: context.translate.accountHolderName,
                              hintText: context.translate.nameHint,
                              validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                              initialValue: state.accountHolderName,
                              onChanged: cubit.onAccountHolderNameChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.routingNumber,
                              hintText: context.translate.routingNumberHint,
                              initialValue: state.routingNumber,
                              onChanged: cubit.onRoutingNumberChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.accountNumber,
                              validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                              hintText: context.translate.accountNumberHint,
                              initialValue: state.accountNumber,
                              onChanged: cubit.onAccountNumberChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.bankName,
                              validator: (value) => value?.isEmpty == true ? context.translate.fieldIsRequired : null,
                              hintText: context.translate.bankNameHint,
                              initialValue: state.bankName,
                              onChanged: cubit.onBankNameChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.branchName,
                              hintText: context.translate.branchNameHint,
                              initialValue: state.branchName,
                              onChanged: cubit.onBranchNameChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              context.translate.dateOfBith,
                              style: context.labelLarge,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: AppFormField(
                                    hintText: context.translate.dayHint,
                                    validator: (value) {
                                      if (value?.isEmpty == true) return context.translate.fieldIsRequired;
                                      if (int.tryParse(value ?? "0") == null) return "invalid value";
                                      if (int.tryParse(value ?? "0")! > 31) return "invalid value";
                                      return null;
                                    },
                                    initialValue: state.accountHolderDateOfBirth?.day.toString(),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    onChanged: (value) {
                                      cubit.onAccountHolderDateOfBirthChanged(
                                        DateTime(
                                          int.tryParse(value ?? "0") ?? 0,
                                          state.accountHolderDateOfBirth?.month ?? 0,
                                          state.accountHolderDateOfBirth?.year ?? 0,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: AppFormField(
                                    hintText: context.translate.monthHint,
                                    validator: (value) {
                                      if (value?.isEmpty == true) return context.translate.fieldIsRequired;
                                      if (int.tryParse(value ?? "0") == null) return "invalid value";
                                      if (int.tryParse(value ?? "0")! > 12) return "invalid value";
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    initialValue: state.accountHolderDateOfBirth?.month.toString(),
                                    onChanged: (value) {
                                      cubit.onAccountHolderDateOfBirthChanged(
                                        DateTime(
                                          state.accountHolderDateOfBirth?.day ?? 0,
                                          int.tryParse(value ?? "0") ?? 0,
                                          state.accountHolderDateOfBirth?.year ?? 0,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: AppFormField(
                                    hintText: context.translate.yearHint,
                                    validator: (value) {
                                      if (value?.isEmpty == true) return context.translate.fieldIsRequired;
                                      if (int.tryParse(value ?? "0") == null) return "invalid value";
                                      if (int.tryParse(value ?? "0")! > 4000) return "invalid value";
                                      return null;
                                    },
                                    initialValue: state.accountHolderDateOfBirth?.year.toString(),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                    ],
                                    onChanged: (value) {
                                      cubit.onAccountHolderDateOfBirthChanged(
                                        DateTime(
                                          state.accountHolderDateOfBirth?.day ?? 0,
                                          state.accountHolderDateOfBirth?.month ?? 0,
                                          int.tryParse(value ?? "0") ?? 0,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.state,
                              hintText: context.translate.stateHint,
                              initialValue: state.accountHolderState,
                              onChanged: cubit.onAccountHolderStateChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.city,
                              hintText: context.translate.cityHint,
                              initialValue: state.accountHolderCity,
                              onChanged: cubit.onAccountHolderCityChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.address,
                              hintText: context.translate.addressHint,
                              initialValue: state.accountHolderAddress,
                              onChanged: cubit.onAccountHolderAddressChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppFormField(
                              label: context.translate.zipCode,
                              hintText: context.translate.zipCodeHint,
                              initialValue: state.accountHolderZip,
                              onChanged: cubit.onAccountHolderZipCodeChanged,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: context.responsive(
                        double.infinity,
                        xl: null,
                      ),
                      padding: const EdgeInsets.only(bottom: 16),
                      child: AppPrimaryButton(
                        onPressed: () {
                          if (formKey.currentState?.validate() == true) {
                            formKey.currentState?.save();

                            cubit.submit(input: state.toInput);
                          }
                        },
                        child: Text(context.translate.saveChanges),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
