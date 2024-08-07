import 'package:flutter/material.dart';
import '../constants.dart';
import 'custom_button.dart';
import 'custom_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle; //input

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            maxLines: 5,
            hintText: 'content',
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
            CustomButton(
            onTap: (){
              if(formKey.currentState!.validate() ){
                formKey.currentState!.save();
              }else{
                autoValidateMode =AutovalidateMode.always;
                setState(() {});
              }


            },
              backgroundColo: kPrimaryColor,
              colorText: Colors.black,
              text: 'Add')
        ],
      ),
    );
  }
}
