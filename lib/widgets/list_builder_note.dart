import 'package:dawwen_app/widgets/note_card.dart';
import 'package:flutter/material.dart';

class NoteListBuilder extends StatelessWidget {
  const NoteListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const NoteCard(),
      itemCount: 3,
    );
  }
}
