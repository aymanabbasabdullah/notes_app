import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes__cubit.dart';


import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  Widget build(BuildContext context) {
void initState(){
  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  super.initState();
}
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(title: 'Notes',icons: Icons.search,),
          SizedBox(
            height: 20,
          )  ,
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
