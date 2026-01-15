import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final ProfileItem item;

  const ProfileTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(item.icon, color: item.color),
        title: Text(
          item.title,
          style: TextStyle(
            color: item.color ?? ColorPalette.textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: item.onTap,
      ),
    );
  }
}
