import 'dart:io';
import 'package:flutter_riverpod/legacy.dart';

final productImagesProvider =
    StateNotifierProvider<ProductImagesNotifier, List<File>>(
      (ref) => ProductImagesNotifier(),
    );

class ProductImagesNotifier extends StateNotifier<List<File>> {
  ProductImagesNotifier() : super([]);

  void addImage(File image) {
    state = [...state, image];
  }

  void addImages(List<File> images) {
    state = [...state, ...images];
  }

  void removeImage(File image) {
    state = state.where((i) => i.path != image.path).toList();
  }

  void clear() => state = [];
}
