import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AdminEcommerceBottomBar extends StatelessWidget {
  const AdminEcommerceBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;

    return BottomNavigationBar(
      backgroundColor: ColorPalette.backgroundWhite,
      currentIndex: _indexFromLocation(location),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ColorPalette.primary,
      unselectedItemColor: ColorPalette.greyText,
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/admin/dashboard');
            break;
          case 1:
            context.go('/admin/orders');
            break;
          case 2:
            context.go('/admin/products');
            break;
          case 3:
            context.go('/admin/profile');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.chartBar),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.receipt),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.package),
          label: 'Products',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsLight.user),
          label: 'Profile',
        ),
      ],
    );
  }

  int _indexFromLocation(String location) {
    if (location.startsWith('/admin/orders')) return 1;
    if (location.startsWith('/admin/products')) return 2;
    if (location.startsWith('/admin/profile')) return 3;
    return 0; // dashboard
  }
}
