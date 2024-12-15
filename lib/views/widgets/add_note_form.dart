import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubits/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_botton.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomTextField(
            onSaved: (data) {
              title = data;
            },
            text: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (data) {
              subTitle = data;
            },
            text: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 85,
          ),
          CustomBotton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var notelModel = NoteModel(
                  title!,
                  subTitle!,
                  DateTime.now().toString(),
                  Colors.lightBlue.value,
                );
                BlocProvider.of<AddNotesCubit>(context).addNote(notelModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
