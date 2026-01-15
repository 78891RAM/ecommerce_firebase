import 'package:ecommerce_firebase/core/common_widgets/botttom_sheet/app_bottomsheet.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/state/uploded_image_provider.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/image_picker/image_picker_helper.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/image_picker/imagesource_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductImagePickerButton extends ConsumerWidget {
  const ProductImagePickerButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.add_a_photo),
      label: const Text('Add Images'),
      onPressed: () {
        AppBottomSheet.show(
          context: context,
          child: ImageSourceBottomSheet(
            onCamera: () async {
              Navigator.pop(context);
              final image = await pickFromCamera();
              if (image != null) {
                ref.read(productImagesProvider.notifier).addImage(image);
              }
            },
            onGallery: () async {
              Navigator.pop(context);
              final images = await pickFromGallery();
              if (images.isNotEmpty) {
                ref.read(productImagesProvider.notifier).addImages(images);
              }
            },
          ),
        );
      },
    );
  }
}
