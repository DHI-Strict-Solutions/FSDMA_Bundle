import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/entities/order_request.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/home/presentation/blocs/home.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/waypoints_view/waypoints_view.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/presentation/small_chip.dart';

class OrderRequestItem extends StatelessWidget {
  final OrderRequestEntity request;

  const OrderRequestItem({
    super.key,
    required this.request,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: Assets.images.orderRequestHeader.provider(),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1464748B),
            blurRadius: 8,
            offset: Offset(2, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorPalette.neutralVariant99,
                  ),
                  padding: const EdgeInsets.all(8),
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
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        request.serviceName,
                        style: context.labelLarge?.copyWith(
                          color: ColorPalette.neutral99,
                        ),
                      ),
                      Text(
                        request.paymentMethod.map(
                          paymentGateway: (_) => "Online Payment",
                          savedPaymentMethod: (_) => "Paid",
                          cash: (_) => "Cash",
                          wallet: (_) => "Paid",
                        ),
                        style: context.bodyMedium?.copyWith(
                          color: ColorPalette.neutralVariant90,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  (request.fee - request.providerShare).formatCurrency(request.currency),
                  style: context.titleLarge?.copyWith(
                    color: ColorPalette.neutral99,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: ColorPalette.neutralVariant99),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmallChip(
                        text: request.distance.toFormattedDistance(context),
                        icon: const Icon(Ionicons.map, color: ColorPalette.neutral70),
                      ),
                      SmallChip(
                        text: context.translate.durationInMinutes(request.duration ~/ 60),
                        icon: const Icon(Ionicons.time, color: ColorPalette.neutral70),
                      )
                    ],
                  ),
                  const Divider(
                    height: 12,
                  ),
                  SizedBox(
                    height: 150,
                    child: SingleChildScrollView(
                      child: WayPointsView(
                        waypoints: request.waypoints,
                      ),
                    ),
                  ),
                  if (request.rideOptions.isNotEmpty) ...[
                    const Divider(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          context.translate.preferences,
                          style: context.bodyMedium,
                        ),
                        Expanded(
                            child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          alignment: WrapAlignment.end,
                          children: [
                            for (final preference in request.rideOptions)
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: ColorPalette.primary95,
                                  ),
                                ),
                                child: Icon(
                                  preference.icon.icon,
                                  color: ColorPalette.primary30,
                                ),
                              )
                          ],
                        ))
                      ],
                    ),
                  ],
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: AppPrimaryButton(
                      onPressed: () {
                        locator<HomeBloc>().onAcceptOrder(request);
                      },
                      child: Text(context.translate.acceptOrder),
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
