import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_list_view.dart';

class CustomBodyNote extends StatelessWidget {
  const CustomBodyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(),
          Expanded(
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}
