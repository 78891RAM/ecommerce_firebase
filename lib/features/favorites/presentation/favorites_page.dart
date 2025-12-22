import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundWhite2,
      appBar: const PrimaryAppBar(title: 'Favorites'),
      body: ListView(
        padding: const EdgeInsets.only(top: 12, bottom: 16),
        children: [_favoriteItem(context), _favoriteItem(context)],
      ),
    );
  }

  // ================= FAVORITE ITEM CARD =================
  Widget _favoriteItem(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
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
                  'Minimal Watch',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.textBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$29.99',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: ColorPalette.greyText,
                  ),
                ),
              ],
            ),
          ),

          // Actions
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                color: ColorPalette.primary,
                onPressed: () {
                  // remove from favorites
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                color: ColorPalette.textBlack4,
                onPressed: () {
                  // add to cart
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
