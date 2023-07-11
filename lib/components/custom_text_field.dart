import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.controller,
    this.onTap,
    this.maxLines,
    this.prefixicon,
    this.suffixIcon,
    this.focusNode,
  });

  final String? hintText;
  final TextEditingController? controller;
  final void Function()? onTap;
  final int? maxLines;
  final Widget? prefixicon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      maxLines: maxLines,
      focusNode: focusNode,
      decoration: InputDecoration(
        prefixIcon: prefixicon,
        suffixIcon: suffixIcon,
        label: Text(hintText ?? ""),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
