import 'package:ecommerce_firebase/core/common_widgets/primary_buttonn.dart';
import 'package:ecommerce_firebase/core/common_widgets/textform_field.dart';
import 'package:ecommerce_firebase/module/admin/admin_product/presentation/widgets/add_product_form/category_field.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/image_picker/image_picker_button.dart';
import 'package:ecommerce_firebase/module/admin/dashboard/presentation/widgets/image_picker/image_preview.dart';
import 'package:flutter/material.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({super.key});

  @override
  State<AddProductForm> createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final priceController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Product',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),

          const SizedBox(height: 16),

          CustomTextField(label: 'Product Name', controller: nameController),

          const SizedBox(height: 16),

          const CategoryField(),

          const SizedBox(height: 16),

          CustomTextField(
            label: 'Price',
            controller: priceController,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),

          CustomTextField(
            label: 'Description',
            controller: priceController,
            keyboardType: TextInputType.number,
            maxLines: 4,
            textCapitalization: TextCapitalization.sentences,
          ),
          const SizedBox(height: 24),

          ProductImageGrid(),
          const SizedBox(height: 16),
          ProductImagePickerButton(),
          const SizedBox(height: 16),

          PrimaryButton(text: "Add Product ", onPressed: () {}),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
