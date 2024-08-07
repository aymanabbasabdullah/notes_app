import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/notes_view.dart';

import 'constants.dart';
import 'models/note_model.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
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
