import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.hintText,
    this.maxLine,
    this.maxLength,
    this.controller,
  });
  final String? hintText;
  final int? maxLine;
  final int? maxLength;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      maxLength: maxLength,
      validator: (data) {
        if (data == null || data.isEmpty) {
          //if(data?.isEmpty?? true)
          return 'This field is required';
        }
        return null;
      },
      controller: controller,
      style: context.textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
