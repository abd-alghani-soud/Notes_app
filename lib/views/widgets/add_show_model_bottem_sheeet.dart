// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddShowModelBottemSheeet extends StatelessWidget {
  const AddShowModelBottemSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          const CustomTextField(
            text: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(
            text: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 85,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: TextButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    kColor,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
