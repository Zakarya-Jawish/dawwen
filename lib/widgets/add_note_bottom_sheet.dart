import 'package:dawwen_app/helper/constants.dart';
import 'package:dawwen_app/widgets/custom_button.dart';
import 'package:dawwen_app/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 13, left: 13),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomTextFeild(hintText: 'Title'),
              const SizedBox(height: 20),
              const CustomTextFeild(hintText: 'Body', maxLine: 5),
              const SizedBox(height: 40),
              CustomButton(
                function: () {},
                text: 'Add Note',
                color: kPrimaryColor,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
