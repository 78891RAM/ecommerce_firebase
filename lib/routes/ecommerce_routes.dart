import 'package:ecommerce_firebase/module/admin/admin_product/presentation/admin_product.dart';
import 'package:ecommerce_firebase/module/admin/bottom_navigationbar/bottom_navigation.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/admin_dashboard.dart';
import 'package:ecommerce_firebase/module/admin/orders/presentation/admin_orders.dart';
import 'package:ecommerce_firebase/module/user/features/bottom_navigationbar/bottom_navigationbar.dart';
import 'package:ecommerce_firebase/module/user/features/cart/presentation/cart_page.dart';
import 'package:ecommerce_firebase/module/user/features/favorites/presentation/favorites_page.dart';
import 'package:ecommerce_firebase/module/user/features/home/presentation/home_details.dart';
import 'package:ecommerce_firebase/module/user/features/home/presentation/home_page.dart';
import 'package:ecommerce_firebase/module/user/features/login/presentation/auth.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/profile_page.dart';
import 'package:ecommerce_firebase/module/user/features/profile/presentation/widgets/profile_role.dart';
import 'package:ecommerce_firebase/routes/app_transition.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    // admin
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const AdminEcommerceBottomBar(),
        );
      },
      routes: [
        GoRoute(
          path: '/admin_dashboard',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              transitionsBuilder: AppTransitions.fade,
              child: AdminDashboardPage(),
            );
          },
        ),
        GoRoute(
          path: '/admin/orders',
          builder: (_, __) => const AdminOrdersPage(),
        ),
        GoRoute(
          path: '/admin/products',
          builder: (_, __) => const AdminProductPage(),
        ),
        GoRoute(
          path: '/admin/profile',
          builder: (_, __) => const ProfilePage(role: ProfileRole.user),
        ),
      ],
    ),
    // ================= AUTH =================
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const AuthPage(),
          transitionsBuilder: AppTransitions.fade,
        );
      },
    ),

    // ================= MAIN APP (BOTTOM TABS) =================
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: const EcommerceBottomBar(),
        );
      },
      routes: [
        // HOME TAB (NO animation)
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: Homepage());
          },
          routes: [
            // PRODUCT DETAILS (WITH animation)
            GoRoute(
              path: 'product_details',
              pageBuilder: (context, state) {
                return CustomTransitionPage(
                  key: state.pageKey,
                  child: const ProductDetailsPage(),
                  transitionsBuilder: AppTransitions.fadeScale,
                );
              },
            ),
          ],
        ),

        // PROFILE TAB (NO animation)
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: ProfilePage(role: ProfileRole.user),
            );
          },
        ),

        // FAVORITES TAB (NO animation)
        GoRoute(
          path: '/favorites',
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: FavoritesPage());
          },
        ),

        // CART TAB (NO animation)
        GoRoute(
          path: '/cart',
          pageBuilder: (context, state) {
            return const NoTransitionPage(child: CartPage());
          },
        ),
      ],
    ),
  ],
);
