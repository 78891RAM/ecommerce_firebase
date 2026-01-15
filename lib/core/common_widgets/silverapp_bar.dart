// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class SilverAppBar extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  const SilverAppBar({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.flexibleSpace,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 80,
      centerTitle: true,
      pinned: true,
      floating: true,
      backgroundColor: ColorPalette.primary,
      title:
          title != null
              ? Text(
                title!,
                style: TextStyle(color: ColorPalette.backgroundWhite),
              )
              : null,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              if (leading != null) leading!,
              if (leading != null) SizedBox(width: 12),
              if (flexibleSpace != null) flexibleSpace!,
            ],
          ),
        ),
      ),

      actions: [if (actions != null) ...actions!],
    );
  }
}
