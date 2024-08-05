
import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 16),
        child: Column(
          children: [
            CustomTextField( ),
            SizedBox(height: 18,),
            CustomTextField( ),
            SizedBox(height: 80,),
            CustomButton(backgroundColo: Colors.greenAccent, colorText: Colors.black, text: 'Add')
          ],
        ),
      ),
    );
  }
}