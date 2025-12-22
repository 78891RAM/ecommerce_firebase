import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Placeholder for product image
          Container(
            height: 300,
            color: Colors.grey.shade300,
            child: const Center(child: Text('Product Image')),
          ),
          const SizedBox(height: 16),
          // Placeholder for product title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Product Title',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          const SizedBox(height: 8),
          // Placeholder for product description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 16),
          // Placeholder for add to cart button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
