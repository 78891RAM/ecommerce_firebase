import 'dart:io';
import 'package:image_picker/image_picker.dart';

final _picker = ImagePicker();

Future<File?> pickFromCamera() async {
  final image = await _picker.pickImage(
    source: ImageSource.camera,
    imageQuality: 70,
  );
  if (image == null) return null;
  return File(image.path);
}

Future<List<File>> pickFromGallery() async {
  final images = await _picker.pickMultiImage(imageQuality: 70);
  return images.map((e) => File(e.path)).toList();
}
