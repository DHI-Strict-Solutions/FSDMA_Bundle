import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/hero/hero.dart';
import 'package:ionicons/ionicons.dart';

class ActionButtons extends StatelessWidget {
  final int totalRides;
  final int totalDistanceTraveled;
  final int? rating;

  const ActionButtons({
    super.key,
    required this.totalRides,
    required this.totalDistanceTraveled,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return ActionButtonsGroup(
      items: [
        HeaderActionButtonItem(
          title: context.translate.totalRides,
          subtilte: totalRides.toString(),
          icon: Ionicons.car,
        ),
        HeaderActionButtonItem(
          title: context.translate.distanceTraveled,
          subtilte: totalDistanceTraveled.toFormattedDistance(context),
          icon: Ionicons.map,
        ),
        HeaderActionButtonItem(
          title: context.translate.rating,
          iconColor: ColorPalette.secondary70,
          subtilte: rating?.toString() ?? '',
          icon: Ionicons.star,
          onPressed: () {
            context.router.push(const FeedbacksSummaryRoute());
          },
        ),
      ],
    );
  }
}
