import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            CustomTextField(hintText: 'Title',),
            SizedBox(height: 16),
            CustomTextField(
              hintText: 'Content',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 80, 
                horizontal: 12,
              ),
              //maxLines: 3,
            ),
            SizedBox(height: 120),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

