import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.onSaved, required this.text, this.maxLines = 1});

  final String text;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return "that required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 24.0,
        ),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color(0xff62fcd7),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          borderSide: const BorderSide(
            color: kColor,
          ),
        ),
      ),
    );
  }
}
