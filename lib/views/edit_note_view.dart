import 'package:dawwen_app/models/note_model.dart';
import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:dawwen_app/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key});
  static String id = "editNoteView";
  final GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    titleController.text = note.title;
    bodyController.text = note.body;
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Edit Note',
          iconData: Icons.check,
          onPressed: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CustomTextFeild(
                  controller: titleController,
                  hintText: 'title',
                  maxLength: 100,
                  maxLine: 3,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFeild(
                  controller: bodyController,
                  hintText: 'body',
                  maxLine: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
