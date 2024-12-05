import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_button.dart';
import 'custom_text_form_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextFeild(
            hintText: 'Title',
            maxLength: 100,
            controller: titleController,
          ),
          const SizedBox(height: 10),
          CustomTextFeild(
            hintText: 'Body',
            maxLine: 5,
            controller: bodyController,
          ),
          const SizedBox(height: 40),
          CustomButton(
            text: 'Add Note',
            color: kPrimaryColor,
            function: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }
}
