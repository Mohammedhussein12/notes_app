part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteCubit {}

class AddNoteSuccess extends AddNoteCubit {}

class AddNoteFailure extends AddNoteCubit {
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}
