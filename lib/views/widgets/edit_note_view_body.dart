import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 55,
          ),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            text: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            text: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
