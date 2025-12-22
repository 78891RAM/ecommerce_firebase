import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:ecommerce_firebase/core/common_widgets/primary_buttonn.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundWhite2,
      appBar: PrimaryAppBar(title: 'My Cart'),

      // ================= CART ITEMS =================
      body: ListView(
        padding: const EdgeInsets.only(bottom: 120),
        children: [
          const SizedBox(height: 12),

          _cartItem(context),
          _cartItem(context),
        ],
      ),

      // ================= CHECKOUT BAR =================
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        decoration: BoxDecoration(
          color: ColorPalette.backgroundWhite,
          border: Border(top: BorderSide(color: ColorPalette.dividerColor)),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Total row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    '\$199.00',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Checkout button
              SizedBox(
                width: double.infinity,
                child: PrimaryButton(
                  text: 'Proceed to Checkout',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ================= CART ITEM =================
  Widget _cartItem(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://images.unsplash.com/photo-1523275335684-37898b6baf30',
              width: 72,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          // Product Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$99.00',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: ColorPalette.greyText,
                  ),
                ),
                const SizedBox(height: 8),

                // Quantity controller
                Row(
                  children: [
                    _qtyButton(Icons.remove),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text('1'),
                    ),
                    _qtyButton(Icons.add),
                  ],
                ),
              ],
            ),
          ),

          // Delete
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline),
            color: ColorPalette.buttonRed,
          ),
        ],
      ),
    );
  }

  // ================= QTY BUTTON =================
  Widget _qtyButton(IconData icon) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite2,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, size: 18, color: ColorPalette.textBlack),
    );
  }
}
