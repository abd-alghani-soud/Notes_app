import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        left: 16,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: const Color(0xFFFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 16,
              ),
              child: Text(
                "Build Your Career With Abd Alghani Soud",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            trailing: const Icon(
              Icons.delete,
              color: Colors.black,
              size: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              "12/4/2024",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
