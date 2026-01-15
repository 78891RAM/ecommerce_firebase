import 'package:flutter/material.dart';

class RecentOrdersSection extends StatelessWidget {
  const RecentOrdersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          title: Text('Order #10$index'),
          subtitle: const Text('Pending'),
          trailing: const Text('£120'),
        ),
        childCount: 5,
      ),
    );
  }
}
