import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:flutter/widgets.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/route.dart';

import 'nav_item.dart';

class RouterObserver extends AutoRouterObserver {
  final Map<String, NavItem> routeMap = {
    HomeRoute.name: NavItem.home,
    EarningsRoute.name: NavItem.earnings,
    AnnouncementsRoute.name: NavItem.announcements,
    PayoutAccountsRoute.name: NavItem.profile,
    PayoutAccountListRoute.name: NavItem.profile,
    ProfileRoute.name: NavItem.profile,
    WalletRoute.name: NavItem.wallet,
    RideHistoryRoute.name: NavItem.rideHistory,
    RideHistoryDetailsRoute.name: NavItem.rideHistory,
    SettingsRoute.name: NavItem.settings,
  };

  @override
  void didPush(Route route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    final routeName = route.settings.name;
    if (routeName != null && routeMap.keys.where((e) => e.startsWith(routeName)).isNotEmpty) {
      final route = routeMap[routeName];
      locator<RouteCubit>().routeTo(route!);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    final routeName = previousRoute?.settings.name;
    if (routeName != null && routeMap.keys.where((e) => e.startsWith(routeName)).isNotEmpty) {
      final route = routeMap[routeName];
      locator<RouteCubit>().routeTo(route!);
    }
  }
}
