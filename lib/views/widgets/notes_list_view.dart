import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/notes_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [];
  @override
  Widget build(BuildContext context) {
    List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(),
              );
            }),
      );
    });
  }
}
