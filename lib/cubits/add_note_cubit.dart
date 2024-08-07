import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    try{
      emit(AddNoteSuccess());
      var notesBox = Hive.box(kNotesBox);
      await notesBox.add(note);
    }  catch(e){
      AddNoteFailure(e.toString());
    }
  }
}
