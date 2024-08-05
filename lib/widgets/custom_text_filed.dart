

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.textInputType,
      this.icon,
      this.isObscureText = false,
      this.onChanged,
      this.hintText,
        this.label,
      super.key});
  String? hintText;
  Text? label;
  Function(String)? onChanged;
  bool? isObscureText;
  Icon? icon;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: textInputType,
      obscureText: isObscureText!,
      // validator: (data){
      //   if(data!.isEmpty){
      //     return 'filed is requaired';
      //   }
      // },
      // maxLength: 10,
      // keyboardType: TextInputType.number,
      // cursorColor: Colors.deepOrange, الاشاره السهم للماوس|
      // style: TextStyle(color: Colors.white),
      onChanged: onChanged,
      decoration: InputDecoration(
        label:label ,
        suffixIcon: icon,
        counterStyle: TextStyle(color: Colors.white),
        // label: Text('Email'),
        // hintStyle: TextStyle(color: Colors.black ),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
