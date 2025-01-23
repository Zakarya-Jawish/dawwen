import 'package:bloc/bloc.dart';
import 'package:dawwen_app/helper/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());
  List<NoteModel>? notes;
  getAllNotes() {
    //we don't need loading state because nothing need wait
    //don't need try-catch because this simple code and try-catch is expinsive
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notes = noteBox.values.toList();
    emit(NotesSuccessState());
  }
}
