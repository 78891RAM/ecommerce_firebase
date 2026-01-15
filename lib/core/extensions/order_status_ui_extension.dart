import 'package:flutter/material.dart';
import '../enums/order_status.dart';

extension OrderStatusUI on OrderStatus {
  String get label {
    switch (this) {
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.processing:
        return 'Processing';
      case OrderStatus.delivered:
        return 'Delivered';
      case OrderStatus.cancelled:
        return 'Cancelled';
    }
  }

  Color get textColor {
    switch (this) {
      case OrderStatus.pending:
        return Colors.orange;
      case OrderStatus.processing:
        return Colors.blue;
      case OrderStatus.delivered:
        return Colors.green;
      case OrderStatus.cancelled:
        return Colors.red;
    }
  }

  Color get backgroundColor {
    return textColor.withOpacity(0.12);
  }
}
