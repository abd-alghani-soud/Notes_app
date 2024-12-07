import 'package:flutter/material.dart';

class CustomIconSearch extends StatelessWidget {
  const CustomIconSearch({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
          0.03,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
