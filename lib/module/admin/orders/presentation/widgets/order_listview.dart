import 'package:ecommerce_firebase/core/enums/order_status.dart' show OrderStatus;
import 'package:ecommerce_firebase/module/admin/orders/data/mock_data/order_mock_data.dart';
import 'package:ecommerce_firebase/module/admin/orders/presentation/widgets/order_card.dart';
import 'package:flutter/material.dart';


class OrdersList extends StatelessWidget {
  final OrderStatus? status;

  const OrdersList({super.key, this.status});

  List<Order> _filteredOrders() {
    if (status == null) return mockOrders;
    return mockOrders.where((o) => o.status == status).toList();
  }

  @override
  Widget build(BuildContext context) {
    final orders = _filteredOrders();

    if (orders.isEmpty) {
      return const Center(child: Text('No orders found'));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(order: orders[index]);
      },
    );
  }
}
