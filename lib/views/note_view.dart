import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:dawwen_app/models/note_model.dart';
import 'package:dawwen_app/views/edit_note_view.dart';
import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({
    super.key,
  });
  static String id = "NoteView";
  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.settingsOf(context)!.arguments as NoteModel;
    return Scaffold(
      appBar: CustomAppBar(
          title: note.title,
          iconData: Icons.edit,
          onPressed: () {
            Navigator.pushNamed(context, EditNoteView.id);
          }),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: context.textTheme.bodyMedium!
                    .copyWith(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                note.body,
                style: context.textTheme.bodyMedium!.copyWith(fontSize: 23),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
