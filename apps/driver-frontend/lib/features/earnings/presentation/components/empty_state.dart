import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/widgets.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

class EarningsEmptyState extends StatelessWidget {
  const EarningsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.images.rideHistoryEmptyState.image(
          width: 240,
          height: 240,
        ),
        const SizedBox(height: 12),
        Text(
          context.translate.noRecordsFoundEarnings,
          style: context.titleMedium,
        ),
      ],
    );
  }
}
