import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EcommerceBottomBar extends StatelessWidget {
  const EcommerceBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;

    return BottomNavigationBar(
      backgroundColor: ColorPalette.backgroundWhite,
      currentIndex: _indexFromLocation(location),
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/home');
            break;
          case 1:
            context.go('/favorites');
            break;
          case 2:
            context.go('/cart');
            break;
          case 3:
            context.go('/profile');
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorPalette.primary,
      unselectedItemColor: ColorPalette.greyText,
      items: const [
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.heart),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.shoppingCart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.user),
          label: 'Profile',
        ),
      ],
    );
  }

  int _indexFromLocation(String location) {
    if (location.startsWith('/favorites')) return 1;
    if (location.startsWith('/cart')) return 2;
    if (location.startsWith('/profile')) return 3;
    return 0;
  }
}
