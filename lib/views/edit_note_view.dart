import 'package:dawwen_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:dawwen_app/models/note_model.dart';
import 'package:dawwen_app/views/note_view.dart';
import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:dawwen_app/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static String id = "editNoteView";

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

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
          onPressed: () {
            if (formKey.currentState!.validate()) {
              note.title = titleController.text;
              note.body = bodyController.text;
              note.save();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.pushReplacementNamed(context, NoteView.id,
                  arguments: note);
            }
          },
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

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }
}
