import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.notes});

  final NoteModel notes;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          CustomAppBar(
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subTitle = subTitle ?? widget.notes.subTitle;
              widget.notes.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNote();
            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            text: widget.notes.title,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            text: widget.notes.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
