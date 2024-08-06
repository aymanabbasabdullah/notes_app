import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/notes_view.dart';

import 'constants.dart';

void main() async{
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
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
