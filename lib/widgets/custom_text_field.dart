
import 'package:flutter/material.dart';

import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.maxLines = 1,
    this.onSaved,
  });
  final String hintText;
  final EdgeInsets? contentPadding;
  final int? maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.5),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
