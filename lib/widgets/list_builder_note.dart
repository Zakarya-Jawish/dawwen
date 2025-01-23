import 'package:dawwen_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:dawwen_app/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteListBuilder extends StatelessWidget {
  const NoteListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => const NoteCard(),
          itemCount: 3,
        );
      },
    );
  }
}
