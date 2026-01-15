import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String title;
  final int currentValue;
  final int targetValue;
  final Color progressColor;

  const StatCard({
    super.key,
    required this.title,
    required this.currentValue,
    required this.targetValue,
    this.progressColor = Colors.black,
  });

  double get progress {
    if (targetValue == 0) return 0;
    return (currentValue / targetValue).clamp(0.0, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorPalette.backgroundWhite,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentValue.toString(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(title, style: const TextStyle(color: ColorPalette.greyText)),

            const SizedBox(height: 12),

            // Progress bar
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 6,
                backgroundColor: Colors.grey.shade200,
                valueColor: AlwaysStoppedAnimation(progressColor),
              ),
            ),

            const SizedBox(height: 6),

            // Percentage text
            Text(
              '${(progress * 100).toStringAsFixed(0)}%',
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
