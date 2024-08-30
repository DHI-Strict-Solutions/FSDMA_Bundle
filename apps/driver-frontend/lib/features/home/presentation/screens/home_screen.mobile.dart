// ignore_for_file: use_build_context_synchronously

import 'package:driver_flutter/core/presentation/app_drawer.dart';
import 'package:driver_flutter/features/home/presentation/blocs/home.dart';
import 'package:driver_flutter/features/home/presentation/components/driver_search_radius_button_new.dart';
import 'package:driver_flutter/features/home/presentation/components/home_my_location_button.dart';
import 'package:driver_flutter/features/home/presentation/components/map_view.dart';
import 'package:driver_flutter/features/home/presentation/components/navigate_button.dart';
import 'package:driver_flutter/features/home/presentation/components/top_nav_bar.dart';
import 'package:driver_flutter/features/home/presentation/screens/mobile_layout_delegate.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/active_order_sheet.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/chat_sheet.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/online_offline_sheet.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/order_summary.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/rate_rider_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:generic_map/generic_map.dart';

import 'sheets/order_requests_pageview.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  MapViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      extendBody: true,
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) {
          final currentMapFull = current.driverStatus.maybeMap(
            orElse: () => false,
            online: (value) => value.orderRequests.isNotEmpty,
          );
          final previousMapFull = previous.driverStatus.maybeMap(
            orElse: () => false,
            online: (value) => value.orderRequests.isNotEmpty,
          );
          return currentMapFull != previousMapFull;
        },
        builder: (context, state) {
          return CustomMultiChildLayout(
            delegate: MobileLayoutDelegate(
                isMapFull: state.driverStatus.maybeMap(
              orElse: () => false,
              online: (value) => value.orderRequests.isNotEmpty,
            )),
            children: [
              LayoutId(
                id: MobileLayoutDelegate.mapLayoutId,
                child: const HomeMapView(),
              ),
              LayoutId(
                id: MobileLayoutDelegate.navbarId,
                child: TopNavBar(
                  onMenuButtonPressed: () => scaffoldKey.currentState?.openDrawer(),
                ),
              ),
              LayoutId(
                id: MobileLayoutDelegate.cardLayoutId,
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return AnimatedSwitcher(
                      duration: AnimationDuration.pageStateTransitionMobile,
                      child: state.driverStatus.map(
                        accessDenied: (value) => const Text('access denied'),
                        initial: (_) => const SizedBox(),
                        loading: (_) => const SizedBox(),
                        online: (online) {
                          if (online.orderRequests.isEmpty) {
                            return OnlineOfflineSheet(state: state);
                          } else {
                            return OrderRequestsPageView(
                              requests: online.orderRequests,
                            );
                          }
                        },
                        offline: (offline) => OnlineOfflineSheet(state: state),
                        onTrip: (onTrip) => onTrip.page.map(
                          overview: (overview) => ActiveOrderSheet(state: onTrip),
                          chat: (chat) => ChatSheet(order: onTrip.order),
                          payment: (payment) => OrderSummary(order: onTrip.order),
                          rate: (rate) => RateRiderSheet(order: onTrip.order),
                        ),
                      ),
                    );
                  },
                ),
              ),
              LayoutId(
                id: MobileLayoutDelegate.navigateButtonId,
                child: const NavigateButton(),
              ),
              LayoutId(
                id: MobileLayoutDelegate.searchRadiusButtonId,
                child: const DriverSearchRadiusButtonNew(),
              ),
              LayoutId(
                id: MobileLayoutDelegate.myLocationButtonId,
                child: const HomeMyLocationButton(),
              )
            ],
          );
        },
      ),
    );
  }
}
