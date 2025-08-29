import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
             CustomAppBar(text: 'Notes',icon: Icons.search,func: () {
             },),
            Expanded(
             child: Padding(
               padding: const EdgeInsets.symmetric(vertical: 8),
               child: ListView.builder(
                padding:EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: NoteItem(),
                    );
                  },
               ),
             )
           ),
          ],
        ),
      ),
    );
  }
}

