import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'revenue_point.dart';

class RevenueChart extends StatelessWidget {
  final List<RevenuePoint> points;

  const RevenueChart({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: true),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: points.map((p) => FlSpot(p.x.toDouble(), p.y)).toList(),
              isCurved: true,
              color: ColorPalette.greyText,
              barWidth: 3,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: ColorPalette.greyText.withOpacity(0.15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
