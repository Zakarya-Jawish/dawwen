part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitialState extends NotesState {}

final class NotesLoadingState extends NotesState {}

final class NotesSuccessState extends NotesState {}

final class NotesFailureState extends NotesState {
  final String errorMessage;
  NotesFailureState(this.errorMessage);
}
