import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';

class AppBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: ColorPalette.backgroundWhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => Material(color: ColorPalette.primary, child: child),
    );
  }
}
