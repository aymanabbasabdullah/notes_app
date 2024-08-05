import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
            children:   [
              SizedBox(
                height: 40,
              ),
              CustomAppBar(title: 'Edit Notes',icons: Icons.check ,),
              SizedBox(
                height: 20,
              ),
              CustomTextField(hintText: 'title'),
              SizedBox(
                height: 8,
              ),
              CustomTextField(hintText: 'content',maxLines:10,),
            ],
      ),
    );
  }
}
