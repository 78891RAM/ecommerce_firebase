import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_items_list.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_list_tile.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_role.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_section_title.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final ProfileRole role;

  const ProfilePage({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    final sections =
        role == ProfileRole.admin
            ? adminProfileSections(context)
            : userProfileSections(context);

    return Scaffold(
      appBar: PrimaryAppBar(
        title: role == ProfileRole.admin ? 'Admin Profile' : 'Profile',
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children:
            sections.entries.map((entry) {
              return ProfileSectionTitle(
                title: entry.key,
                children:
                    entry.value.map((item) => ProfileTile(item: item)).toList(),
              );
            }).toList(),
      ),
    );
  }
}
