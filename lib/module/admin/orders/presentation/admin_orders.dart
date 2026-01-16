import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/core/enums/order_status.dart';
import 'package:ecommerce_firebase/module/admin/orders/presentation/widgets/order_listview.dart';
import 'package:flutter/material.dart';

class AdminOrdersPage extends StatelessWidget {
  const AdminOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PrimaryAppBar(title: 'Orders', showLeadingIcon: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: ColorPalette.backgroundWhite,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                isScrollable: true,
                dividerColor: Colors.transparent,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: ColorPalette.primary.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: ColorPalette.greyText,
                tabs: const [
                  Tab(text: 'All'),
                  Tab(text: 'Pending'),
                  Tab(text: 'Processing'),
                  Tab(text: 'Delivered'),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  OrdersList(),
                  OrdersList(status: OrderStatus.pending),
                  OrdersList(status: OrderStatus.processing),
                  OrdersList(status: OrderStatus.delivered),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
