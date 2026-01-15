import 'package:flutter/material.dart';

class ProfileItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color? color;

  ProfileItem({
    required this.title,
    required this.icon,
    required this.onTap,
    this.color,
  });
}
