import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/core/presentation/slider_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/presentation/waypoints_view/waypoints_view.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:flutter_common/core/presentation/card_handle.dart';
import 'package:flutter_common/core/presentation/buttons/app_icon_button.dart';

import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../blocs/home.dart';
import '../../components/notice_bar_content.dart';
import '../../components/payment_method_select_field.dart';
import '../../dialogs/ride_options_dialog.dart';
import '../../dialogs/ride_safety_dialog.dart';

class ActiveOrderSheet extends StatelessWidget {
  final OnTripDriverStatus state;

  const ActiveOrderSheet({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: context.responsive(
        BoxDecoration(
          color: ColorPalette.primary20,
          borderRadius: BorderRadius.circular(30),
        ),
        xl: const BoxDecoration(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          context.responsive(
            AnimatedSwitcher(
              duration: AnimationDuration.pageStateTransitionMobile,
              child: (state.order.status == OrderStatus.driverAccepted && state.order.etaPickupAt != null)
                  ? NoticeBarContent(
                      icon: Ionicons.time,
                      text: context.translate.noticePickingUpRiderIn,
                      trailingText: state.order.etaPickupAt?.minutesFromNow(context),
                    )
                  : state.order.status == OrderStatus.arrived
                      ? NoticeBarContent(
                          icon: Ionicons.information_circle,
                          text: context.translate.headingToDestination,
                        )
                      : state.order.status == OrderStatus.started
                          ? NoticeBarContent(
                              icon: Ionicons.time,
                              text: context.translate.headingToDestination,
                              trailingText: state.order.expectedArrival(context),
                            )
                          : const SizedBox.shrink(),
            ),
            xl: const SizedBox(),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              color: ColorPalette.neutralVariant99,
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CardHandle(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorPalette.neutral90),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Ionicons.person_circle,
                            color: ColorPalette.primary30,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${state.order.riderFirstName} ${state.order.riderLastName}",
                                style: context.labelMedium,
                              ),
                              Text(
                                state.order.serviceName,
                                style: context.bodyMedium?.copyWith(
                                  color: ColorPalette.neutralVariant50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Badge(
                          isLabelVisible:
                              state.order.chatMessages.lastOrNull?.createdAt.isAfter(state.order.lastSeenMessagesAt) ??
                                  false,
                          child: AppIconButton(
                            icon: Ionicons.chatbubble,
                            onPressed: () {
                              locator<HomeBloc>().add(const HomeEvent.onShowChat());
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        AppIconButton(
                          icon: Ionicons.call,
                          onPressed: () {
                            launchUrlString("tel://+${state.order.riderPhoneNumber}");
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 120,
                    child: SingleChildScrollView(
                      child: WayPointsView(
                        waypoints: state.order.waypoints,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 16,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.02),
                          blurRadius: 10,
                          offset: const Offset(0, -5),
                        )
                      ],
                      color: ColorPalette.neutralVariant99,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PaymentMethodSelectField(
                          order: state.order,
                          onPressed: null,
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Divider(
                          height: 16,
                        ),
                        Row(
                          children: [
                            AppTextButton(
                              iconData: Ionicons.cog,
                              isDense: true,
                              text: context.translate.rideOptions,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  useSafeArea: false,
                                  builder: (context) => RideOptionsSheet(
                                    orderId: state.order.id,
                                  ),
                                );
                              },
                            ),
                            const Spacer(),
                            AppTextButton(
                              iconData: Ionicons.shield,
                              isDense: true,
                              text: context.translate.rideSafety,
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  useSafeArea: false,
                                  builder: (context) => RideSafetyDialog(
                                    order: state.order,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AnimatedSwitcher(
                    duration: AnimationDuration.pageStateTransitionMobile,
                    child: Padding(
                      padding: const EdgeInsets.all(16).copyWith(bottom: 8),
                      child: state.order.status == OrderStatus.driverAccepted
                          ? SliderButton(
                              text: context.translate.slideToConfirmArrival,
                              onSlided: () {
                                locator<HomeBloc>().add(
                                  HomeEvent.onArrivedToPickupPoint(
                                    orderId: state.order.id,
                                  ),
                                );
                              },
                            )
                          : state.order.status == OrderStatus.arrived
                              ? SliderButton(
                                  text: context.translate.slideToConfirmPickup,
                                  onSlided: () {
                                    locator<HomeBloc>().add(
                                      HomeEvent.onStripStarted(
                                        orderId: state.order.id,
                                      ),
                                    );
                                  },
                                )
                              : state.order.status == OrderStatus.started
                                  ? SliderButton(
                                      text: context.translate.slideToConfirmDropoff,
                                      onSlided: () {
                                        locator<HomeBloc>().add(
                                          HomeEvent.onArrivedToDestination(
                                            order: state.order,
                                            destinationArrivedTo: (state.order.destinationArrivedTo ?? -1) + 1,
                                          ),
                                        );
                                      },
                                    )
                                  : const SizedBox.shrink(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
