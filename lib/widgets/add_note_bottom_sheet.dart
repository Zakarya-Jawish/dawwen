import 'package:dawwen_app/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 30, right: 13, left: 13),
        child: Column(
          children: [
            CustomTextFeild(
              hintText: 'Title',
            ),
            SizedBox(height: 20),
            CustomTextFeild(
              hintText: 'Body',
              maxLine: 5,
            ),
          ],
        ),
      ),
    );
  }
}
