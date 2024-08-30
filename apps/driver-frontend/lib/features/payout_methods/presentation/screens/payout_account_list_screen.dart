import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/payout_methods/data/models/payout_account.prod.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:ionicons/ionicons.dart';

import '../blocs/payout_accounts.dart';
import '../dialogs/select_payout_method_dialog.dart';

@RoutePage()
class PayoutAccountListScreen extends StatelessWidget {
  const PayoutAccountListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<PayoutAccountsBloc>(),
      child: Container(
        color: ColorPalette.neutralVariant99,
        padding: context.responsive(
          const EdgeInsets.all(16).copyWith(bottom: 0),
          xl: const EdgeInsets.all(16).copyWith(top: 96, bottom: 0),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              AppTopBar(title: context.translate.payoutMethods),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: AppBorderedButton(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      useSafeArea: false,
                      builder: (context) => const SelectPayoutMethodDialog(),
                    );
                    locator<PayoutAccountsBloc>().load();
                  },
                  title: context.translate.addPayoutMethod,
                  icon: Ionicons.add_circle,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              BlocBuilder<PayoutAccountsBloc, PayoutAccountsState>(
                builder: (context, state) {
                  return state.map(
                      initial: (value) => const SizedBox(),
                      empty: (value) => const Center(
                            child: Text("No payout account"),
                          ),
                      loaded: (loaded) {
                        return Expanded(
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return loaded.linkedMethods[index].toSavedCard(
                                onDefaultChanged: (value) {
                                  locator<PayoutAccountsBloc>().updatePayoutMethodDefaultStatus(
                                    payoutMethodId: loaded.linkedMethods[index].id,
                                    isDefault: value,
                                  );
                                },
                                onDeletePressed: null,
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(
                              height: 16,
                            ),
                            itemCount: loaded.linkedMethods.length,
                          ),
                        );
                      },
                      loading: (loading) {
                        return Assets.lottie.loading.lottie(
                          width: double.infinity,
                          height: 150,
                        );
                      },
                      error: (error) {
                        return Center(
                          child: Text(error.message),
                        );
                      });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
