import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_list_view.dart';

class CustomBodyNote extends StatefulWidget {
  const CustomBodyNote({super.key});

  @override
  State<CustomBodyNote> createState() => _CustomBodyNoteState();
}

class _CustomBodyNoteState extends State<CustomBodyNote> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(
            text: 'Note',
            icon: Icons.search,
          ),
          Expanded(
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}
