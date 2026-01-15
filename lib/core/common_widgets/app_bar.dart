// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? actions;

  const PrimaryAppBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: ColorPalette.primary,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [if (actions != null) actions!],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
