import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:driver_flutter/features/payout_methods/data/models/payout_account.prod.dart';
import 'package:driver_flutter/features/payout_methods/presentation/components/payment_methods_empty_state.dart';
import 'package:driver_flutter/features/payout_methods/presentation/dialogs/select_payout_method_dialog.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/app_menu_item.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:ionicons/ionicons.dart';

import '../blocs/payout_accounts.dart';

@RoutePage()
class PayoutAccountsScreen extends StatefulWidget {
  const PayoutAccountsScreen({super.key});

  @override
  State<PayoutAccountsScreen> createState() => _PayoutAccountsScreenState();
}

class _PayoutAccountsScreenState extends State<PayoutAccountsScreen> {
  late final AppLifecycleListener lifecycleListener;

  @override
  void initState() {
    locator<PayoutAccountsBloc>().load();
    lifecycleListener = AppLifecycleListener(onStateChange: _onStateChanged);
    super.initState();
  }

  @override
  void dispose() {
    lifecycleListener.dispose();
    super.dispose();
  }

  void _onStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        locator<PayoutAccountsBloc>().load();
        break;

      default:
        break;
    }
  }

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
                height: 24,
              ),
              Expanded(
                child: BlocBuilder<PayoutAccountsBloc, PayoutAccountsState>(
                  builder: (context, state) {
                    switch (state) {
                      case LoadingState():
                        return Assets.lottie.loading.lottie(
                          width: double.infinity,
                          height: double.infinity,
                        );

                      case LoadedState(:final linkedMethods):
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxWidth: 400),
                              child: linkedMethods.defaultPayoutAccount?.toSavedCard(
                                onDefaultChanged: (value) {
                                  locator<PayoutAccountsBloc>().updatePayoutMethodDefaultStatus(
                                    payoutMethodId: linkedMethods.defaultPayoutAccount!.id,
                                    isDefault: value,
                                  );
                                },
                                onDeletePressed: null,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Ionicons.information_circle,
                                  color: ColorPalette.neutral80,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      text: context.translate.notice,
                                      style: context.labelSmall,
                                      children: [
                                        TextSpan(
                                          text: context.translate.payoutNoticeTitle,
                                          style: context.bodySmall?.copyWith(
                                            color: ColorPalette.neutralVariant50,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  ListView.separated(
                                    padding: EdgeInsets.zero,
                                    itemCount: linkedMethods.nonDefaultPayoutAccounts.length,
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) => const Divider(
                                      indent: 32,
                                      height: 12,
                                    ),
                                    itemBuilder: (context, index) => AppMenuItem(
                                      icon: Ionicons.business,
                                      title: linkedMethods.nonDefaultPayoutAccounts[index].bankName ?? "",
                                      subtitle: linkedMethods.nonDefaultPayoutAccounts[index].accountNumber,
                                      onPressed: () async {
                                        await context.router.push(
                                          const PayoutAccountListRoute(),
                                        );
                                        locator<PayoutAccountsBloc>().load();
                                      },
                                    ),
                                  ),
                                  const Divider(
                                    indent: 32,
                                    height: 12,
                                  ),
                                  AppMenuItem(
                                    icon: Ionicons.add,
                                    title: context.translate.addPayoutMethod,
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        useSafeArea: false,
                                        builder: (context) => const SelectPayoutMethodDialog(),
                                      );
                                      locator<PayoutAccountsBloc>().load();
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        );

                      case EmptyState():
                        return const PaymentMethodsEmptyState();

                      case ErrorState(:final message):
                        return Text(message);
                      default:
                        return const SizedBox();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
