import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_icon_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          style: const TextStyle(
            fontSize: 28,
          ),
          text,
        ),
        const Spacer(),
        CustomIconSearch(
          icon: icon,
        ),
      ],
    );
  }
}
