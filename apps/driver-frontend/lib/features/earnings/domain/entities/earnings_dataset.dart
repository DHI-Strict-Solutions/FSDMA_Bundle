import 'package:collection/collection.dart';
import 'package:driver_flutter/config/theme/fonts.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_datapoint.dart';
part 'earnings_dataset.freezed.dart';

@freezed
class EarningsDataset with _$EarningsDataset {
  const factory EarningsDataset({
    required String currency,
    required List<EarningsDatapoint> datapoints,
  }) = _EarningsDataset;

  const EarningsDataset._();

  double get totalEarnings => datapoints.fold(
        0,
        (previousValue, element) => previousValue + element.earnings,
      );

  int get totalRides => datapoints.fold(
        0,
        (previousValue, element) => previousValue + element.rides,
      );

  int get totalTimeSpent => datapoints.fold(
        0,
        (previousValue, element) => previousValue + element.timeSpent,
      );

  int get totalDistanceTraveled => datapoints.fold(
        0,
        (previousValue, element) => previousValue + element.distanceTraveled,
      );

  BarChartData get barChartData {
    final barGroups = datapoints
        .mapIndexed(
          (index, e) => BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: e.earnings,
                color: ColorPalette.primary30,
                width: 16,
              ),
            ],
          ),
        )
        .toList();

    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              return Transform.rotate(
                angle: -45 * 3.14 / 180,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    datapoints[value.toInt()].title,
                    style: const TextStyle(
                      color: Color(0xFF73777F),
                      fontSize: 10,
                      fontFamily: Fonts.secondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: (value, meta) {
              return Text(
                value.formatCurrency(currency),
                style: const TextStyle(
                  color: Color(0xFF73777F),
                  fontSize: 10,
                  fontFamily: Fonts.secondary,
                  fontWeight: FontWeight.w400,
                ),
              );
            },
          ),
        ),
      ),
      gridData: const FlGridData(show: false),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: barGroups,
    );
  }
}
