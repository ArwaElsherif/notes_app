import 'package:flutter/material.dart';

import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.contentPadding,
  });
 final String hintText;
 final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
       contentPadding: contentPadding ?? 
             EdgeInsets.zero,
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
