import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:ionicons/ionicons.dart';

class RatingGauge extends StatelessWidget {
  final double rating;

  const RatingGauge({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return AnimatedRadialGauge(
      /// The animation duration.
      duration: const Duration(seconds: 1),
      curve: Curves.elasticOut,

      /// Define the radius.
      /// If you omit this value, the parent size will be used, if possible.
      radius: 100,

      /// Gauge value.
      value: rating * 20,

      /// Optionally, you can configure your gauge, providing additional
      /// styles and transformers.
      axis: const GaugeAxis(
        min: 0,
        max: 100,
        degrees: 180,

        /// Set the background color and axis thickness.
        style: GaugeAxisStyle(
          thickness: 20,
          background: ColorPalette.neutral90,
          segmentSpacing: 4,
          cornerRadius: Radius.circular(16),
        ),
        progressBar: GaugeProgressBar.rounded(
          color: ColorPalette.semanticgreen70,
        ),
      ),
      builder: (context, child, value) {
        return Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorPalette.primary95,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Ionicons.star, color: ColorPalette.secondary70),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  (value / 20).toStringAsFixed(1),
                  style: context.headlineMedium,
                ),
              ],
            ),
          ),
        );
      },
    );

    /// You can also, define the child builder.
    /// You will build a value label in the following way, but you can use the widget of your choice.
    ///
    /// For non-value related widgets, take a look at the [child] parameter.
    /// ```
    /// builder: (context, child, value) => RadialGaugeLabel(
    ///  value: value,
    ///  style: const TextStyle(
    ///    color: Colors.black,
    ///    fontSize: 46,
    ///    fontWeight: FontWeight.bold,
    ///  ),
    /// ),
    /// ```
  }
}
