import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Map<String, List<ProfileItem>> userProfileSections(BuildContext context) {
  return {
    'Account': [
      ProfileItem(title: 'Edit Profile', icon: Icons.edit, onTap: () {}),
      ProfileItem(
        title: 'Change Password',
        icon: Icons.lock_outline,
        onTap: () {},
      ),
    ],

    'Shopping': [
      ProfileItem(
        title: 'My Orders',
        icon: Icons.shopping_bag_outlined,
        onTap: () => context.go('/orders'),
      ),
      ProfileItem(
        title: 'Addresses',
        icon: Icons.location_on_outlined,
        onTap: () => context.go('/addresses'),
      ),
      ProfileItem(
        title: 'Wishlist',
        icon: Icons.favorite_border,
        onTap: () => context.go('/wishlist'),
      ),
    ],

    'Settings': [
      ProfileItem(
        title: 'Notifications',
        icon: Icons.notifications_none,
        onTap: () {},
      ),
      ProfileItem(title: 'Language', icon: Icons.language, onTap: () {}),
    ],

    'Actions': [
      ProfileItem(
        title: 'Logout',
        icon: Icons.logout,
        color: ColorPalette.buttonRed,
        onTap: () => context.go('/login'),
      ),
    ],
  };
}

Map<String, List<ProfileItem>> adminProfileSections(BuildContext context) {
  return {
    'Store': [
      ProfileItem(
        title: 'Store Details',
        icon: Icons.store,
        onTap: () => context.go('/admin/store'),
      ),
      ProfileItem(
        title: 'Products',
        icon: Icons.inventory_2_outlined,
        onTap: () => context.go('/admin/products'),
      ),
    ],

    'Management': [
      ProfileItem(
        title: 'Staff Management',
        icon: Icons.people_outline,
        onTap: () => context.go('/admin/staff'),
      ),
      ProfileItem(
        title: 'Orders',
        icon: Icons.receipt_long,
        onTap: () => context.go('/admin/orders'),
      ),
    ],

    'Finance': [
      ProfileItem(
        title: 'Finance & Payouts',
        icon: Icons.payments_outlined,
        onTap: () => context.go('/admin/payouts'),
      ),
      ProfileItem(
        title: 'Reports & Analytics',
        icon: Icons.bar_chart,
        onTap: () => context.go('/admin/reports'),
      ),
    ],

    'Security': [
      ProfileItem(
        title: 'Security Settings',
        icon: Icons.security,
        onTap: () => context.go('/admin/security'),
      ),
    ],

    'Actions': [
      ProfileItem(
        title: 'Logout',
        icon: Icons.logout,
        color: ColorPalette.buttonRed,
        onTap: () => context.go('/login'),
      ),
    ],
  };
}
