part of 'delete_note_cubit.dart';

@immutable
sealed class DeleteNoteState {}

class DeleteNoteInitialState extends DeleteNoteState {}

class DeleteNoteSuccessState extends DeleteNoteState {}

class DeleteNoteLoadingState extends DeleteNoteState {}

class DeleteNoteFailureState extends DeleteNoteState {
  final String? errorMessage;
  DeleteNoteFailureState({this.errorMessage});
}
