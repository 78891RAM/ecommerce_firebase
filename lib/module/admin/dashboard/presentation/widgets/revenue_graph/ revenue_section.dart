import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/revenue_graph/revenue_data.dart';
import 'package:flutter/material.dart';
import 'revenue_chart.dart';
import 'revenue_range.dart';
import 'revenue_toggle.dart';

class RevenueSection extends StatefulWidget {
  const RevenueSection({super.key});

  @override
  State<RevenueSection> createState() => _RevenueSectionState();
}

class _RevenueSectionState extends State<RevenueSection> {
  RevenueRange _selected = RevenueRange.weekly;

  @override
  Widget build(BuildContext context) {
    final data = getRevenueData(_selected);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Revenue',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              RevenueToggle(
                selected: _selected,
                onChanged: (range) {
                  setState(() => _selected = range);
                },
              ),
            ],
          ),

          const SizedBox(height: 16),

          RevenueChart(points: data),
        ],
      ),
    );
  }
}
