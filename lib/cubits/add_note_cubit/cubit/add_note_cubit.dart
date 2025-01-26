import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import 'package:dawwen_app/helper/constants.dart';

import '../../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote({
    required String title,
    required String body,
    required int colorNum,
  }) async {
    emit(AddNoteLoadingState());
    var date = DateTime.now();
    var note = NoteModel(
      title: title,
      body: body,
      date:
          '${DateFormat.yMd().format(date)}  ${DateFormat.jms().format(date)}',
      color: colorNum,
    );

    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      await notesBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(errorMessage: e.toString()));
    }
  }
}
