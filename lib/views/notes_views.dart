import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/views/widgets/add_show_model_bottem_sheeet.dart';
import 'package:note_app/views/widgets/custom_body_note.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const CustomBodyNote(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kColor,
        child: const Icon(
          color: Colors.black,
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddShowModelBottemSheeet();
            },
          );
        },
      ),
    );
  }
}
