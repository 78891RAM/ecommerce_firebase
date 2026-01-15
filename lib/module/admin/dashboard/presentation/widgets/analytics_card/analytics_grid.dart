import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/analytics_card/analytics_card.dart';
import 'package:flutter/material.dart';

class AdminStatsGrid extends StatelessWidget {
  const AdminStatsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        StatCard(
          title: 'Total Products',
          currentValue: 180,
          targetValue: 300,
          progressColor: Colors.black,
        ),
        StatCard(
          title: 'Total Orders',
          currentValue: 120,
          targetValue: 200,
          progressColor: Colors.blue,
        ),
        StatCard(
          title: 'Total Customers',
          currentValue: 80,
          targetValue: 150,
          progressColor: Colors.green,
        ),
        StatCard(
          title: 'Total Revenue',
          currentValue: 5000,
          targetValue: 10000,
          progressColor: Colors.purple,
        ),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.2,
      ),
    );
  }
}
