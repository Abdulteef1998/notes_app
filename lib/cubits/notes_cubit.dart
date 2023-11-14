// import 'package:bloc/bloc.dart';
// import 'package:hive/hive.dart';
// import 'package:meta/meta.dart';
// import 'package:noteapp/constant.dart';
// import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';
// import 'package:noteapp/models/note_model.dart';

// part 'notes_state.dart';

// class NotesCubit extends Cubit<NotesState> {
//   NotesCubit() : super(NotesInitial());
//   List<NoteModel>? notes;
//   fetchAllNotes() {
//     var notesBox = Hive.box<NoteModel>(kNotesBox);

//     notes = notesBox.values.toList();

//   }
// }

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/cubits/add_note_cubit/add_note_cubit.dart';

import '../constant.dart';
import '../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
