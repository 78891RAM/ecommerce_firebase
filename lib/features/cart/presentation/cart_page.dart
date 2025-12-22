import 'package:ecommerce_firebase/core/common_widgets/primary_buttonn.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Placeholder for cart items
          Container(
            height: 300,
            color: Colors.grey.shade300,
            child: const Center(child: Text('Cart Items')),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Total: \$0.00',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          PrimaryButton(text: "Login", onPressed: () {}),
        ],
      ),
    );
  }
}
