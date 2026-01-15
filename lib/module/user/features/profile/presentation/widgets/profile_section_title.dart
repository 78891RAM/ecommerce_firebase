import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:flutter/material.dart';

class ProfileSectionTitle extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ProfileSectionTitle({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorPalette.textBlack4,
            ),
          ),
        ),
        ...children,
        const SizedBox(height: 24),
      ],
    );
  }
}
