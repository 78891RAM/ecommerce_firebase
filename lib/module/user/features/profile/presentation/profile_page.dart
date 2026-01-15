import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: ColorPalette.backgroundWhite2,
      appBar: PrimaryAppBar(title: 'Profile'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // ================= USER HEADER =================
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: ColorPalette.backgroundWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorPalette.primary.withOpacity(0.12),
                  child: Icon(
                    Icons.person,
                    size: 24,
                    color: ColorPalette.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ram Bhandari',
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: ColorPalette.textBlack,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'ram@gmail.com',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: ColorPalette.greyText,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right, color: ColorPalette.greyText),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // ================= ACCOUNT =================
          _sectionTitle('Account'),
          _profileTile(icon: Icons.edit, title: 'Edit Profile', onTap: () {}),
          _profileTile(
            icon: Icons.lock_outline,
            title: 'Change Password',
            onTap: () {},
          ),

          const SizedBox(height: 24),

          // ================= SETTINGS =================
          _sectionTitle('Settings'),
          _profileTile(
            icon: Icons.notifications_none,
            title: 'Notifications',
            onTap: () {},
          ),
          _profileTile(icon: Icons.language, title: 'Language', onTap: () {}),

          const SizedBox(height: 24),

          // ================= SUPPORT =================
          _sectionTitle('Support'),
          _profileTile(
            icon: Icons.help_outline,
            title: 'Help & Support',
            onTap: () {},
          ),
          _profileTile(
            icon: Icons.info_outline,
            title: 'About App',
            onTap: () {},
          ),

          const SizedBox(height: 24),

          // ================= LOGOUT =================
          _profileTile(
            icon: Icons.logout,
            title: 'Logout',
            iconColor: ColorPalette.buttonRed,
            textColor: ColorPalette.buttonRed,
            onTap: () {
              context.go('/login');
            },
          ),
        ],
      ),
    );
  }

  // ================= SECTION TITLE =================
  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ColorPalette.textBlack4,
        ),
      ),
    );
  }

  // ================= TILE =================
  Widget _profileTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? iconColor,
    Color? textColor,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: ColorPalette.backgroundWhite,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor ?? ColorPalette.textBlack4),
        title: Text(
          title,
          style: TextStyle(
            color: textColor ?? ColorPalette.textBlack,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(Icons.chevron_right, color: ColorPalette.greyText),
        onTap: onTap,
      ),
    );
  }
}
