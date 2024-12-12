// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_form.dart';

class AddShowModelBottemSheeet extends StatelessWidget {
  const AddShowModelBottemSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
