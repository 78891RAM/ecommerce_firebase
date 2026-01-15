import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';

final selectedCategoryProvider = StateProvider<String?>((ref) => null);

final categoryListProvider = Provider<List<String>>((ref) {
  return [
    'Electronics',
    'Fashion',
    'Home & Kitchen',
    'Books',
    'Sports',
    'Beauty',
  ];
});
