import 'package:dawwen_app/widgets/note_card.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: const [
            NoteCard(),
            NoteCard(),
          ],
        ),
      ),
    );
  }
}
