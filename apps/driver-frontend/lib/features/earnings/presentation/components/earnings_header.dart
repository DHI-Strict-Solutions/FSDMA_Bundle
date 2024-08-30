import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/features/earnings/domain/entities/earnings_dataset.dart';
import 'package:flutter/cupertino.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

import 'action_buttons.dart';
import 'filters_box.dart';

class EarningsHeader extends StatelessWidget {
  final EarningsDataset? dataset;

  const EarningsHeader({
    super.key,
    required this.dataset,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 54),
          decoration: BoxDecoration(
            borderRadius: context.responsive(BorderRadius.zero, xl: BorderRadius.circular(20)),
            image: DecorationImage(
              image: Assets.images.walletHeaderBackground.provider(),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            top: context.responsive(true, xl: false),
            bottom: false,
            child: Column(
              children: [
                context.responsive(
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppBackButton(
                      onPressed: () => context.router.maybePop(),
                    ),
                  ),
                  xl: const SizedBox(
                    height: 36,
                  ),
                ),
                const FiltersBox(),
                SizedBox(
                  height: context.responsive(24, xl: 48),
                ),
              ],
            ),
          ),
        ),
        if (dataset != null) ...[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: ActionButtons(
                currency: dataset!.currency,
                totalRides: dataset!.totalRides,
                earnings: dataset!.totalEarnings,
                distanceTraveled: dataset!.totalDistanceTraveled,
                duration: dataset!.totalTimeSpent,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
