import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote({required NoteModel note}) {}
}
