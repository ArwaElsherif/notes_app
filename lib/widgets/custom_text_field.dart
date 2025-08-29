import 'package:flutter/material.dart';

import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.maxLines = 1,
  });
 final String hintText;
 final EdgeInsets? contentPadding;
 final int ? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
       contentPadding: contentPadding ?? 
             EdgeInsets.symmetric(
               vertical: 20,
               horizontal: 12,
             ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimaryColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),

        ),
        
      ),
    );
  }
}
