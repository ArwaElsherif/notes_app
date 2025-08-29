import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomAppBar(text: 'Edit Note', icon: Icons.check,func: () {
                Navigator.pop(context);
              },),
              SizedBox(height: 24,),
              CustomTextField(hintText: 'Title'),
              SizedBox(height: 16),
              CustomTextField(
                hintText: 'Content',
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 80,
                  horizontal: 12,
                ),
                //maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
