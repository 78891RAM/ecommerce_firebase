import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/core/enums/order_status.dart';
import 'package:ecommerce_firebase/module/admin/orders/data/mock_data/order_mock_data.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(theme),

          const SizedBox(height: 14),

          _metaRow(theme),

          const SizedBox(height: 14),

          _actions(theme),
        ],
      ),
    );
  }

  // ---- Header (image + product info)
  Widget _header(ThemeData theme) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _productImage(),
        const SizedBox(width: 12),
        Expanded(child: _productInfo(theme)),
      ],
    );
  }

  // ---- Product image
  Widget _productImage() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(Icons.shopping_bag_outlined, size: 26),
    );
  }

  // ---- Product name + price
  Widget _productInfo(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                order.productName,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              order.id,
              style: theme.textTheme.bodySmall?.copyWith(
                color: ColorPalette.greyText,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          'Rs. ${order.price} | ${order.quantity}kg',
          style: theme.textTheme.bodySmall?.copyWith(
            color: ColorPalette.greyText,
          ),
        ),
      ],
    );
  }

  // ---- ETA + status
  Widget _metaRow(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_etaInfo(theme), _statusText(theme)],
    );
  }

  Widget _etaInfo(ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Estimated Arrival',
          style: theme.textTheme.bodySmall?.copyWith(
            color: ColorPalette.greyText,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          order.eta,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // ---- Status text (simple, no Chip)
  Widget _statusText(ThemeData theme) {
    final statusData = _statusConfig(order.status);

    return Text(
      statusData.text,
      style: theme.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w600,
        color: statusData.color,
      ),
    );
  }

  // ---- Action buttons (status based)
  Widget _actions(ThemeData theme) {
    switch (order.status) {
      case OrderStatus.processing:
        return _trackOrderButton(theme);

      case OrderStatus.delivered:
        return _invoiceButton(theme);

      default:
        return const SizedBox.shrink();
    }
  }

  // ---- Invoice
  Widget _invoiceButton(ThemeData theme) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        maximumSize: Size(160, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Text('Invoice', style: theme.textTheme.bodySmall),
    );
  }

  // ---- Track order
  Widget _trackOrderButton(ThemeData theme) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: Text(
        'Track Order',
        style: theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
      ),
    );
  }

  // ---- Status config
  _StatusData _statusConfig(OrderStatus status) {
    switch (status) {
      case OrderStatus.pending:
        return _StatusData('Pending', Colors.orange);
      case OrderStatus.processing:
        return _StatusData('Food on the way', Colors.green);
      case OrderStatus.delivered:
        return _StatusData('Delivered', Colors.green);
      case OrderStatus.cancelled:
        return _StatusData('Cancelled', Colors.red);
    }
  }
}

// ---- Small helper class
class _StatusData {
  final String text;
  final Color color;

  _StatusData(this.text, this.color);
}
