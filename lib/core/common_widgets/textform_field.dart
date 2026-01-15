import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends HookWidget {
  final String? label;
  final String? hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool isRequired;
  final bool readOnly;
  final bool isPassword;
  final int maxLines;
  final TextCapitalization textCapitalization;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final Color? fillColor;

  const CustomTextField({
    super.key,
    this.label,
    this.hintText,
    this.controller,
    this.validator,
    this.onChanged,
    this.onTap,
    this.fillColor,
    this.keyboardType = TextInputType.text,
    this.isRequired = true,
    this.readOnly = false,
    this.isPassword = false,
    this.maxLines = 1,
    this.textCapitalization = TextCapitalization.none,
  });

  @override
  Widget build(BuildContext context) {
    final isObscure = useState(isPassword);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Text(
              label!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),

        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          readOnly: readOnly,
          maxLines: isPassword ? 1 : maxLines,
          obscureText: isPassword ? isObscure.value : false,
          textCapitalization: textCapitalization,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator:
              validator ??
              (value) {
                if (isRequired && (value == null || value.isEmpty)) {
                  return 'This field is required';
                }
                return null;
              },
          onChanged: onChanged,
          onTap: onTap,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: fillColor ?? Colors.white,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 14.h,
            ),
            border: _border(),
            enabledBorder: _border(),
            focusedBorder: _border(color: Colors.black),
            errorBorder: _border(color: Colors.red),
            focusedErrorBorder: _border(color: Colors.red),
            suffixIcon:
                isPassword
                    ? IconButton(
                      icon: Icon(
                        isObscure.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey,
                      ),
                      onPressed: () => isObscure.value = !isObscure.value,
                    )
                    : null,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _border({Color color = Colors.grey}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: color.withOpacity(0.4)),
    );
  }
}
