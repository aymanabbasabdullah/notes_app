import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/cubits/add_note_cubit.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/notes_view.dart';
import 'constants.dart';
import 'models/note_model.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer =SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily:'Poppins' ,
        useMaterial3: false
      ),
      routes: {
        EditNoteView.id : (context) => EditNoteView(),
        NotesView.id : (context) => NotesView(),
      },
      initialRoute: NotesView.id ,
    );
  }
}