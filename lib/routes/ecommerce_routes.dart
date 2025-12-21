import 'package:ecommerce_firebase/features/home/presentation/home_details.dart';
import 'package:ecommerce_firebase/features/home/presentation/homepage.dart';
import 'package:ecommerce_firebase/features/login/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AuthPage();
      },
    ),
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
  ],
);
