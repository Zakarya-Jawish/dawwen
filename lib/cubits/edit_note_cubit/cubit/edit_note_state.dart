part of 'edit_note_cubit.dart';

@immutable
sealed class EditNoteState {}

class EditNoteInitialState extends EditNoteState {}

class EditNoteSuccessState extends EditNoteState {}

class EditNoteLoadingState extends EditNoteState {}

class EditNoteFailureState extends EditNoteState {
  final String? errorMessage;
  EditNoteFailureState({this.errorMessage});
}
