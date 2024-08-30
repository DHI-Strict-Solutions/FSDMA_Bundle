import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/router/login_guard.dart';
import 'package:driver_flutter/features/announcements/presentation/screens/announcements_screen.dart';
import 'package:driver_flutter/features/auth/presentation/screens/auth_screen.dart';
import 'package:driver_flutter/features/earnings/presentation/screens/earnings_screen.dart';
import 'package:driver_flutter/features/home/presentation/screens/home_screen.dart';
import 'package:driver_flutter/features/navigation/presentation/screens/navigation_screen.dart';
import 'package:driver_flutter/features/payment_methods/presentation/screens/payment_methods_screen.dart';
import 'package:driver_flutter/features/payout_methods/presentation/screens/add_payout_account_screen.dart';
import 'package:driver_flutter/features/payout_methods/presentation/screens/payout_account_list_screen.dart';
import 'package:driver_flutter/features/payout_methods/presentation/screens/payout_accounts_screen.dart';
import 'package:driver_flutter/features/profile/presentation/screens/edit_phone_number_screen.dart';
import 'package:driver_flutter/features/profile/presentation/screens/feedbacks_summary_screen.dart';
import 'package:driver_flutter/features/profile/presentation/screens/profile_info_screen.dart';
import 'package:driver_flutter/features/profile/presentation/screens/profile_parent_screen.dart';
import 'package:driver_flutter/features/profile/presentation/screens/profile_screen.dart';
import 'package:driver_flutter/features/ride_history/presentation/screens/ride_history_details_screen.dart';
import 'package:driver_flutter/features/ride_history/presentation/screens/ride_history_screen.dart';
import 'package:driver_flutter/features/settings/presentation/screens/language_settings_screen.dart';
import 'package:driver_flutter/features/settings/presentation/screens/map_settings_screen.dart';
import 'package:driver_flutter/features/settings/presentation/screens/settings_parent_screen.dart';
import 'package:driver_flutter/features/settings/presentation/screens/settings_screen.dart';
import 'package:driver_flutter/features/wallet/presentation/screens/wallet_parent_screen.dart';
import 'package:driver_flutter/features/wallet/presentation/screens/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../features/payout_methods/domain/entitites/payout_method.dart';

part 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Screen|Dialog|Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthRoute.page,
          path: '/auth',
        ),
        AutoRoute(
          path: '/',
          page: NavigationRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: 'home',
              initial: true,
              guards: [
                LoginGuard(),
              ],
            ),
            AutoRoute(
              page: EarningsRoute.page,
              path: 'earnings',
              guards: [
                LoginGuard(),
              ],
            ),
            AutoRoute(
              page: RideHistoryRoute.page,
              path: 'ride-history',
              guards: [
                LoginGuard(),
              ],
            ),
            AutoRoute(
              page: RideHistoryDetailsRoute.page,
              path: 'ride-history/details',
              guards: [
                LoginGuard(),
              ],
            ),
            AutoRoute(
              page: AnnouncementsRoute.page,
              path: 'announcements',
              guards: [
                LoginGuard(),
              ],
            ),
            AutoRoute(
              page: WalletParentRoute.page,
              path: 'wallet',
              guards: [
                LoginGuard(),
              ],
              children: [
                AutoRoute(
                  page: WalletRoute.page,
                  path: '',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: PaymentMethodsRoute.page,
                  path: 'payment-methods',
                  guards: [
                    LoginGuard(),
                  ],
                ),
              ],
            ),
            AutoRoute(
              page: ProfileParentRoute.page,
              path: 'profile',
              guards: [
                LoginGuard(),
              ],
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  path: '',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: ProfileInfoRoute.page,
                  path: 'info',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: FeedbacksSummaryRoute.page,
                  path: 'feedbacks-summary',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: EditPhoneNumberRoute.page,
                  path: 'phone-number',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: PayoutAccountsRoute.page,
                  path: 'payout-accounts',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: PayoutAccountListRoute.page,
                  path: 'payout-accounts-list',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: AddPayoutAccountRoute.page,
                  path: 'add-payout-account',
                )
              ],
            ),
            AutoRoute(
              page: SettingsParentRoute.page,
              path: 'settings',
              guards: [
                LoginGuard(),
              ],
              children: [
                AutoRoute(
                  page: SettingsRoute.page,
                  path: '',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: LanguageSettingsRoute.page,
                  path: 'language',
                  guards: [
                    LoginGuard(),
                  ],
                ),
                AutoRoute(
                  page: MapSettingsRoute.page,
                  path: 'map',
                  guards: [
                    LoginGuard(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ];
}
