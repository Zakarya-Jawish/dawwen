part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {}

class AddNoteFailureState extends AddNoteState {
  final String? errorMessage;
  AddNoteFailureState({this.errorMessage});
}
