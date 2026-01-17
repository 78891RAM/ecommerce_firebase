import 'package:ecommerce_firebase/core/common_widgets/botttom_sheet/app_bottomsheet.dart';
import 'package:ecommerce_firebase/core/common_widgets/silverapp_bar.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/add_product_form/add_form.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/analytics_card/analytics_grid.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/appbar_title.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/quick_actions.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/recent_orders.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/revenue_graph/revenue_section.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //  APP BAR
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
                onPressed:
                    () => AppBottomSheet.show(
                      context: context,
                      child: AddProductForm(),
                    ),
              ),
            ],
          ),

          //  STATS
          const SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: AdminStatsGrid(),
          ),

          //  QUICK ACTIONS
          const SliverPadding(
            padding: EdgeInsetsGeometry.all(16),
            sliver: QuickActionsSection(),
          ),

          SliverToBoxAdapter(child: const RevenueSection()),

          SliverPadding(
            padding: EdgeInsetsGeometry.all(16),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Recent Orders",

                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),

          //  RECENT ORDERS
          const SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: RecentOrdersSection(),
          ),
        ],
      ),
    );
  }
}
