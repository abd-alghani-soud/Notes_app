// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.onTap});

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kColor,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

