import 'package:dawwen_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:dawwen_app/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/note_model.dart';

class NoteListBuilder extends StatelessWidget {
  const NoteListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return (notes.isNotEmpty)
            ? ListView.builder(
                itemBuilder: (context, index) => NoteCard(
                  note: notes[index],
                ),
                itemCount: notes.length,
              )
            : const Center(
                child: Text('let\'s start write note now..'),
              );
      },
    );
  }
}
