part of 'notes_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteLoading extends NoteState {}

final class NoteLoaded extends NoteState {
  final List<String> notes; 
  NoteLoaded(this.notes);
}

final class NoteError extends NoteState {
  final String message;
  NoteError(this.message);
}
