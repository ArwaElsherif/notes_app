import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_note_state.dart';

class NoteCubit extends Cubit<AddNoteState> {
  NoteCubit() : super(AddNoteInitial());

}
