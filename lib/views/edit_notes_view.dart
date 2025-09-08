// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20cubit/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotesView extends StatefulWidget {
  const EditNotesView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotesView> createState() => _EditNotesViewState();
}

class _EditNotesViewState extends State<EditNotesView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomAppBar(
                text: 'Edit Note',
                icon: Icons.check,
                func: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = content ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 24),
              CustomTextField(
                hintText: widget.note.title,
                onChanged: (value) {
                  title = value;
                },
              ),
              SizedBox(height: 16),
              CustomTextField(
                onChanged: (value) {
                  content = value;
                },
                hintText: widget.note.subTitle,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 80,
                  horizontal: 12,
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
