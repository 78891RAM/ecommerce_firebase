import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/product_actions.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/product_image.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/product_info.dart';
import 'package:flutter/material.dart';

class AdminProductCard extends StatelessWidget {
  final bool isOutOfStock;

  const AdminProductCard({super.key, required this.isOutOfStock});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        borderOnForeground: true,
        color: ColorPalette.backgroundWhite2,
        elevation: 2.5,
        shadowColor: Colors.black.withOpacity(0.08),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImage(isOutOfStock: isOutOfStock),
              const SizedBox(width: 12),
              Expanded(child: ProductInfo(isOutOfStock: isOutOfStock)),
              const SizedBox(width: 8),
              ProductActions(isOutOfStock: isOutOfStock),
            ],
          ),
        ),
      ),
    );
  }
}
