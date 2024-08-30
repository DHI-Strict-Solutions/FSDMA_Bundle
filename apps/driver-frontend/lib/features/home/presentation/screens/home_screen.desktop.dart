import 'package:driver_flutter/features/home/presentation/components/home_my_location_button.dart';
import 'package:driver_flutter/features/home/presentation/components/map_view.dart';
import 'package:driver_flutter/features/home/presentation/screens/desktop_layout_delegate.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/chat_sheet.dart';
import 'package:driver_flutter/features/home/presentation/screens/sheets/order_reqeusts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';

import '../blocs/home.dart';
import '../components/driver_search_radius_button.dart';
import '../components/top_nav_bar.dart';
import 'sheets/active_order_sheet.dart';
import 'sheets/online_offline_sheet.dart';
import 'sheets/order_summary.dart';
import 'sheets/rate_rider_sheet.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.neutralVariant99,
      child: CustomMultiChildLayout(
        delegate: DesktopLayoutDelegate(),
        children: [
          LayoutId(
            id: 'map',
            child: const HomeMapView(),
          ),
          LayoutId(
            id: DesktopLayoutDelegate.navbarId,
            child: const TopNavBar(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
          ),
          LayoutId(
            id: DesktopLayoutDelegate.sidebarLayoutId,
            child: SafeArea(
              bottom: false,
              child: Container(
                margin: const EdgeInsets.only(top: 138),
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
                            return const SizedBox();
                          } else {
                            return OrderRequestsList(
                              requests: online.orderRequests,
                            );
                          }
                        },
                        offline: (offline) => const SizedBox(),
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
            ),
          ),
          LayoutId(
            id: DesktopLayoutDelegate.bottomSheetLayoutId,
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
                        return const SizedBox();
                      }
                    },
                    offline: (offline) => OnlineOfflineSheet(state: state),
                    onTrip: (onTrip) => const SizedBox(),
                  ),
                );
              },
            ),
          ),
          LayoutId(
            id: DesktopLayoutDelegate.searchRadiusButtonId,
            child: const DriverSearchRadiusButton(),
          ),
          LayoutId(
            id: DesktopLayoutDelegate.myLocationButtonId,
            child: const HomeMyLocationButton(),
          )
        ],
      ),
    );
  }
}
