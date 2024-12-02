import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, this.hintText, this.maxLine});
  final String? hintText;
  final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
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
