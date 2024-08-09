import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

import '../../constants.dart';


part 'notes__state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>?notes;

  ///method
  fetchAllNotes( )async{
    // try{
      //331
      var notesBox = Hive.box<NoteModel>(kNotesBox);
       notes =notesBox.values.toList();
      // emit( NotesSuccess(notes));
    // } catch(e){
    //   emit(NotesFailure(e.toString()));
    // }
  }
}
