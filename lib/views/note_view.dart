import 'package:dawwen_app/views/edit_note_view.dart';
import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "NoteView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'title here',
          iconData: Icons.edit,
          onPressed: () {
            Navigator.pushNamed(context, EditNoteView.id);
          }),
      body: Expanded(child: Text('data')),
    );
  }
}
