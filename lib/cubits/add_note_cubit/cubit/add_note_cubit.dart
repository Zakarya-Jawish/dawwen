import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

import 'package:dawwen_app/helper/constants.dart';

import '../../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color? selectedColor = Colors.blue;

  addNote({
    required String title,
    required String body,
  }) async {
    emit(AddNoteLoadingState());
    var date = DateTime.now();
    var note = NoteModel(
      title: title,
      body: body,
      date:
          '${DateFormat.yMd().format(date)}  ${DateFormat.jms().format(date)}',
      color: selectedColor!.value,
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
