import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import '../widgets/add_note_bottom_sheet.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/drawer.dart';
import '../widgets/list_builder_note.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeview';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: CustomAppBar(
          title: 'Notes',
          iconData: Icons.search,
          onPressed: () {},
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: NoteListBuilder(),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
        ),
      ),
    );
  }
}
