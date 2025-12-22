import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: PrimaryAppBar(title: "Favorites"));
  }
}
