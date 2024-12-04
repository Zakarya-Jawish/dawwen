import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:dawwen_app/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "editNoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Note',
        iconData: Icons.check,
        onPressed: () {},
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextFeild(
                hintText: 'title',
                maxLength: 100,
                maxLine: 3,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFeild(
                hintText: 'body',
                maxLine: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
