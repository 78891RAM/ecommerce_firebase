import 'package:ecommerce_firebase/core/common_widgets/botttom_sheet/butttom_sheet_container.dart';
import 'package:flutter/material.dart';

class ImageSourceBottomSheet extends StatelessWidget {
  final VoidCallback onCamera;
  final VoidCallback onGallery;

  const ImageSourceBottomSheet({
    super.key,
    required this.onCamera,
    required this.onGallery,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Add Product Images',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),

          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text('Take Photo'),
            onTap: onCamera,
          ),

          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Choose from Gallery'),
            onTap: onGallery,
          ),
        ],
      ),
    );
  }
}
