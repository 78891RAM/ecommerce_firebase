import 'package:ecommerce_firebase/core/common_widgets/botttom_sheet/app_bottomsheet.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/state/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecommerce_firebase/core/common_widgets/textform_field.dart';
import 'category_bottomsheet.dart';

class CategoryField extends ConsumerWidget {
  const CategoryField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.watch(selectedCategoryProvider);

    return CustomTextField(
      label: 'Category',
      hintText: 'Select category',
      readOnly: true,
      controller: TextEditingController(text: selectedCategory),
      onTap: () {
        AppBottomSheet.show(
          context: context,
          child: const CategoryBottomSheet(),
        );
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Category is required';
        }
        return null;
      },
    );
  }
}
