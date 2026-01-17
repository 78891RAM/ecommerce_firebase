import 'package:ecommerce_firebase/core/common_widgets/app_bar.dart';
import 'package:ecommerce_firebase/core/common_widgets/botttom_sheet/app_bottomsheet.dart';
import 'package:ecommerce_firebase/core/constants/color_palate.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/add_product_form/add_form.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/product_card.dart';

import 'package:flutter/material.dart';

class AdminProductPage extends StatelessWidget {
  const AdminProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(title: ('Admin Products'), showLeadingIcon: true),
      body: ListView.separated(
        key: const PageStorageKey('admin_product_list'),
        padding: const EdgeInsets.all(16),
        itemCount: 6, // mock data
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return AdminProductCard(
            isOutOfStock: index == 2,
            key: ValueKey('admin_product_$index'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorPalette.primary,
        onPressed: () {
          AppBottomSheet.show(child: AddProductForm(), context: context);
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
