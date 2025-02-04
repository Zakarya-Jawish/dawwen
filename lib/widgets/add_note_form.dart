import 'package:dawwen_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:dawwen_app/widgets/list_view_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: SingleChildScrollView(
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
            const SizedBox(height: 20),
            const ListViewColor(),
            const SizedBox(height: 20),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return (state is AddNoteLoadingState)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : CustomButton(
                        text: 'Add Note',
                        color: kPrimaryColor,
                        function: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            BlocProvider.of<AddNoteCubit>(context).addNote(
                              title: titleController.text,
                              body: bodyController.text,
                            );
                          } else {
                            autovalidateMode = AutovalidateMode.always;
                            setState(() {});
                          }
                        },
                      );
              },
            ),
            const SizedBox(height: 40),
          ],
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
