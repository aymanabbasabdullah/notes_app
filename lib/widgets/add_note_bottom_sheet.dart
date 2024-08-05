
import 'package:flutter/material.dart';

import '../constants.dart';
import 'custom_button.dart';
import 'custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:const   Padding(
        padding: const EdgeInsets.symmetric(vertical: 32,horizontal: 16),
        child:  SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField( hintText: 'Title', ),
              SizedBox(height: 16,),
              CustomTextField( maxLines: 5,hintText: 'Content',),
              SizedBox(height: 32,),
              CustomButton(backgroundColo: kPrimaryColor, colorText: Colors.black, text: 'Add')
            ],
          ),
        ),
      ),
    );
  }
}