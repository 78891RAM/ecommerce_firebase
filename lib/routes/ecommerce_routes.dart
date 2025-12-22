import 'package:ecommerce_firebase/features/bottom_navigationbar/bottom_navigationbar.dart';
import 'package:ecommerce_firebase/features/cart/presentation/cart_page.dart';
import 'package:ecommerce_firebase/features/home/presentation/home_details.dart';
import 'package:ecommerce_firebase/features/home/presentation/home_page.dart';
import 'package:ecommerce_firebase/features/login/auth.dart';
import 'package:ecommerce_firebase/features/profile/presentation/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const AuthPage();
      },
    ),

    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(body: child, bottomNavigationBar: EcommerceBottomBar());
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (BuildContext context, GoRouterState state) {
            return const Homepage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'product_details',
              builder: (BuildContext context, GoRouterState state) {
                return const ProductDetailsPage();
              },
            ),
          ],
        ),

        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(path: '/cart', builder: (context, state) => const CartPage()),
      ],
    ),
  ],
);
