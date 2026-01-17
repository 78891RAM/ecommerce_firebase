import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProductActions extends StatelessWidget {
  final bool isOutOfStock;

  const ProductActions({super.key, required this.isOutOfStock});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _ActionIcon(
          icon: PhosphorIcons.pencilSimple(),
          color: ColorPalette.primary,
          tooltip: 'Edit Product',
          onTap: () {
            // edit product
          },
        ),
        SizedBox(width: 8),
        _ActionIcon(
          icon: PhosphorIcons.trash(),
          color: Colors.red,
          tooltip: 'Delete Product',
          onTap: () {
            // delete product
          },
        ),
        SizedBox(width: 8),
        _ActionIcon(
          icon:
              isOutOfStock
                  ? PhosphorIcons.checkCircle()
                  : PhosphorIcons.xCircle(),
          color: isOutOfStock ? Colors.green : Colors.orange,
          tooltip: isOutOfStock ? 'Mark In Stock' : 'Mark Out of Stock',
          onTap: () {
            // toggle stock
          },
        ),
      ],
    );
  }
}

class _ActionIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String tooltip;
  final VoidCallback onTap;

  const _ActionIcon({
    required this.icon,
    required this.color,
    required this.tooltip,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color.withOpacity(0.12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
      ),
    );
  }
}
