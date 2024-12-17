import 'dart:io';

import 'package:dawwen_app/models/note_model.dart';
import 'package:dawwen_app/themes/themes.dart';
import 'package:dawwen_app/views/home_view.dart';
import 'package:dawwen_app/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'views/edit_note_view.dart';
import 'views/note_view.dart';

void main() async {
  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(NoteModelAdapter());
  runApp(const DawwenApp());
}

class DawwenApp extends StatelessWidget {
  const DawwenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.id: (contxt) => const SplashView(),
        HomeView.id: (contxt) => const HomeView(),
        EditNoteView.id: (contxt) => const EditNoteView(),
        NoteView.id: (contxt) => const NoteView(),
      },
      theme: darkMode,
      initialRoute: SplashView.id,
      // home: const Splash(),
    );
  }
}
