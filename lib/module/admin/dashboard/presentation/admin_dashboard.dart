import 'package:ecommerce_firebase/core/common_widgets/silverapp_bar.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/add_form/add_form.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/analytics_card/analytics_grid.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/appbar_title.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/quick_actions.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/recent_orders.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/revenue_graph/%20revenue_section.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // 🔹 APP BAR
          SilverAppBar(
            leading: const ImageAvatar(),
            flexibleSpace: const AdminAppBarTitle(),
            actions: [
              IconButton(
                icon: PhosphorIcon(
                  PhosphorIconsLight.notification,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: PhosphorIcon(PhosphorIconsBold.plus, color: Colors.white),
                onPressed: () => _openAddProduct(context),
              ),
            ],
          ),

          // 🔹 STATS
          const SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: AdminStatsGrid(),
          ),

          // 🔹 QUICK ACTIONS
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: QuickActionsSection(),
          ),

          SliverToBoxAdapter(child: const RevenueSection()),

          // 🔹 RECENT ORDERS
          const SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: RecentOrdersSection(),
          ),
        ],
      ),
    );
  }

  void _openAddProduct(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder:
          (_) => Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom + 16,
            ),
            child: const AddProductForm(),
          ),
    );
  }
}
