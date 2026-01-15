import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_item.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_role.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<ProfileItem> getProfileItems(BuildContext context, ProfileRole role) {
  if (role == ProfileRole.admin) {
    return _adminItems(context);
  }
  return _userItems(context);
}

List<ProfileItem> _userItems(BuildContext context) => [
  ProfileItem(title: 'Edit Profile', icon: Icons.edit, onTap: () {}),
  ProfileItem(
    title: 'My Orders',
    icon: Icons.shopping_bag_outlined,
    onTap: () => context.go('/orders'),
  ),
  ProfileItem(
    title: 'Addresses',
    icon: Icons.location_on_outlined,
    onTap: () {},
  ),
  ProfileItem(
    title: 'Logout',
    icon: Icons.logout,
    color: ColorPalette.buttonRed,
    onTap: () => context.go('/login'),
  ),
];

List<ProfileItem> _adminItems(BuildContext context) => [
  ProfileItem(
    title: 'Store Details',
    icon: Icons.store,
    onTap: () => context.go('/admin/store'),
  ),
  ProfileItem(
    title: 'Staff Management',
    icon: Icons.people_outline,
    onTap: () => context.go('/admin/staff'),
  ),
  ProfileItem(
    title: 'Finance & Payouts',
    icon: Icons.payments_outlined,
    onTap: () => context.go('/admin/payouts'),
  ),
  ProfileItem(
    title: 'Security Settings',
    icon: Icons.security,
    onTap: () => context.go('/admin/security'),
  ),
  ProfileItem(
    title: 'Logout',
    icon: Icons.logout,
    color: ColorPalette.buttonRed,
    onTap: () => context.go('/login'),
  ),
];
