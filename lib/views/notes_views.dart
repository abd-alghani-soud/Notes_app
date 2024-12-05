// ignore: unused_import
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_body_note.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomBodyNote(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: const Icon(
            size: 30,
            Icons.add,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
