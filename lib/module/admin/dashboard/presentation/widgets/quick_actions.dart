import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = _quickActions(context);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              actions.map((action) => _QuickActionItem(item: action)).toList(),
        ),
      ),
    );
  }

  List<_QuickActionModel> _quickActions(BuildContext context) {
    return [
      _QuickActionModel(
        icon: Icons.list_alt,
        label: 'Orders',
        onTap: () => context.go('/admin/orders'),
      ),
      _QuickActionModel(
        icon: Icons.inventory,
        label: 'Products',
        onTap: () => context.go('/admin/products'),
      ),
      _QuickActionModel(
        icon: Icons.category,
        label: 'Categories',
        onTap: () => context.go('/admin/categories'),
      ),
      _QuickActionModel(
        icon: Icons.analytics,
        label: 'Analytics',
        onTap: () => context.go('/admin/analytics'),
      ),
    ];
  }
}

class _QuickActionItem extends StatelessWidget {
  final _QuickActionModel item;

  const _QuickActionItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: item.onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: Theme.of(
              context,
            ).colorScheme.primary.withOpacity(0.12),
            child: Icon(
              item.icon,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            item.label,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class _QuickActionModel {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _QuickActionModel({
    required this.icon,
    required this.label,
    required this.onTap,
  });
}
