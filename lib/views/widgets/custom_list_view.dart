import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              child: CustomNoteItem(),
            );
          }),
    );
  }
}
