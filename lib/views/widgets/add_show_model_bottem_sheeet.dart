// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_botton.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddShowModelBottemSheeet extends StatelessWidget {
  const AddShowModelBottemSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            CustomTextField(
              text: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              text: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 85,
            ),
            CustomBotton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
