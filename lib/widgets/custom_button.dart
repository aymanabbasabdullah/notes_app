import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.backgroundColo,required this.colorText,this.onTap,required this.text, super.key});
  final String text;
  final Color colorText;
  final Color backgroundColo;


  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:backgroundColo,

        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              color: colorText,
            ),
          ),
        ),
      ),
    );
  }
}
