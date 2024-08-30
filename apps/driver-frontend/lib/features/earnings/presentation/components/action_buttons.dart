import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/hero/hero.dart';

class ActionButtons extends StatelessWidget {
  final String currency;
  final double earnings;
  final int totalRides;
  final int distanceTraveled;
  final int duration;

  const ActionButtons({
    super.key,
    required this.totalRides,
    required this.earnings,
    required this.distanceTraveled,
    required this.currency,
    required this.duration,
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
          subtilte: distanceTraveled.toFormattedDistance(context),
          icon: Ionicons.map,
        ),
        HeaderActionButtonItem(
          title: context.translate.timeSpent,
          subtilte: context.convertSecondsToHumanReadable(duration),
          icon: Ionicons.timer,
        ),
      ],
    );
  }
}
