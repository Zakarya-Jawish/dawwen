import 'package:dawwen_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 13, left: 13),
          child: BlocProvider(
            create: (context) => AddNoteCubit(),
            child: BlocConsumer<AddNoteCubit, AddNoteState>(
              listener: (context, state) {
                if (state is AddNoteFailureState) {
                  debugPrint("Error: Add note failed");
                }
                if (state is AddNoteSuccessState) {
                  debugPrint("Add note Success");
                  Navigator.pop(context);
                }
              },
              builder: (context, state) => AbsorbPointer(
                absorbing: (state is AddNoteLoadingState),
                child: const AddNoteForm(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
