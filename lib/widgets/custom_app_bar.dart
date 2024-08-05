
import 'package:flutter/material.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icons });
  final String title;
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return   Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const  Spacer(),
        CustomSearchIcon(icons:icons ,)
      ],
    );
  }
}