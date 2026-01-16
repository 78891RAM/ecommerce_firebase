import 'package:ecommerce_firebase/core/enums/order_status.dart';


final List<Order> mockOrders = [
  Order(
    id: '#162432',
    productName: 'Tomato',
    price: 80,
    quantity: 2,
    status: OrderStatus.pending,
    eta: '25 mins',
  ),
  Order(
    id: '#123453',
    productName: 'Chicken',
    price: 80,
    quantity: 3,
    status: OrderStatus.processing,
    eta: '20 mins',
  ),
  Order(
    id: '#237612',
    productName: 'Orange',
    price: 60,
    quantity: 2,
    status: OrderStatus.delivered,
    eta: 'Delivered',
  ),
];


class Order {
  final String id;
  final String productName;
  final double price;
  final int quantity;
  final OrderStatus status;
  final String eta;

  Order({
    required this.id,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.status,
    required this.eta,
  });
}
