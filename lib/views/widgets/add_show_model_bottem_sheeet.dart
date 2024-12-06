// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AddShowModelBottemSheeet extends StatelessWidget {
  const AddShowModelBottemSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          const SizedBox(
            height: 45,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 24.0,
                ),
                hintText: "title",
                hintStyle: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 96.0,
                ),
                hintText: "content",
                hintStyle: TextStyle(
                  color: Colors.lightBlueAccent,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
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
                  backgroundColor:
                      WidgetStateProperty.all(Colors.lightBlueAccent),
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
