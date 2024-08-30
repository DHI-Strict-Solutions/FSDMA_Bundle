import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';

class WizardSteps extends StatelessWidget {
  final int count;
  final int selectedStep;

  const WizardSteps({
    super.key,
    required this.count,
    required this.selectedStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 1; i <= count - 1; i++)
          Expanded(
            child: Row(
              children: [
                AnimatedContainer(
                  duration: AnimationDuration.pageStateTransitionMobile,
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: i <= selectedStep ? ColorPalette.primary50 : ColorPalette.primary99,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    i.toString(),
                    style: context.labelMedium?.copyWith(
                      color: i <= selectedStep ? ColorPalette.neutral99 : ColorPalette.neutralVariant50,
                    ),
                  ),
                ),
                if (i < count)
                  Expanded(
                    child: i < selectedStep ? gradientHorizontalLine : dottedHorizontalLine,
                  )
              ],
            ),
          ),
        AnimatedContainer(
          duration: AnimationDuration.pageStateTransitionMobile,
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: count <= selectedStep ? ColorPalette.primary50 : ColorPalette.primary99,
            shape: BoxShape.circle,
          ),
          child: Text(
            count.toString(),
            style: context.labelMedium?.copyWith(
              color: count <= selectedStep ? ColorPalette.neutral99 : ColorPalette.neutralVariant50,
            ),
          ),
        )
      ],
    );
  }

  Widget get gradientHorizontalLine => Container(
        height: 4,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2)),
          gradient: LinearGradient(
            colors: [
              Color(0xff2892FF),
              Color(0xff45FCDE),
            ],
          ),
        ),
      );

  Widget get dottedHorizontalLine => const DottedLine(
        lineThickness: 4,
        dashColor: ColorPalette.neutral90,
      );
}
