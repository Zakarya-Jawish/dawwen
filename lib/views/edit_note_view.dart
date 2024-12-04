import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "editNoteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Edit Note',
        iconData: Icons.arrow_outward,
        onPressed: () {},
      ),
    );
  }
}
