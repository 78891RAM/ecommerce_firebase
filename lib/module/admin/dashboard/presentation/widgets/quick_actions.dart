import 'package:flutter/material.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          QuickAction(icon: Icons.list_alt, label: 'Orders'),
          QuickAction(icon: Icons.inventory, label: 'Products'),
          QuickAction(icon: Icons.category, label: 'Categories'),
          QuickAction(icon: Icons.analytics, label: 'Analytics'),
        ],
      ),
    );
  }
}

class QuickAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickAction({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 22, child: Icon(icon, size: 20)),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
