import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final bool isOutOfStock;

  const ProductInfo({super.key, required this.isOutOfStock});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Nike Air Max',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: isOutOfStock ? Colors.grey : ColorPalette.textBlack,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Shoes • Men',
          style: TextStyle(fontSize: 13, color: ColorPalette.textBlack),
        ),
        const SizedBox(height: 6),
        Text(
          '£120.00',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: ColorPalette.primary,
          ),
        ),
      ],
    );
  }
}
