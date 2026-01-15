import 'package:ecommerce_firebase/core/common_widgets/botttom_sheet/butttom_sheet_container.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/state/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryBottomSheet extends ConsumerWidget {
  const CategoryBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryListProvider);

    return BottomSheetContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select Category',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),

          ListView.separated(
            shrinkWrap: true,
            itemCount: categories.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final category = categories[index];

              return ListTile(
                title: Text(category),
                onTap: () {
                  ref.read(selectedCategoryProvider.notifier).state = category;
                  Navigator.pop(context);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
