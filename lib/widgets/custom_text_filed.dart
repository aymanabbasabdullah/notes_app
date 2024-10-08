import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText,  this.maxLines= 1, this.onSaved, this.onChanged });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved:onSaved ,
      validator: (value) {
        // if(value != null && value.isEmpty ){ // if value is null = true
        if(value?.isEmpty ?? true ){ // if value  is null = true
          return 'Field is required';
        }else{
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor:kPrimaryColor ,
      decoration: InputDecoration(
        hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:  BorderSide(color: color ?? Colors.white));
  }
}
