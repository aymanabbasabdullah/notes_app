part of 'notes__cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}
// final class NotesLoading extends NotesState {}
final class NotesSuccess extends NotesState {

}
// final class NotesFailure extends NotesState {
//   final String errMessage;
//   NotesFailure(this.errMessage);
//
// }
