import 'package:dawwen_app/bloc_observer.dart';
import 'package:dawwen_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:dawwen_app/helper/constants.dart';
import 'package:dawwen_app/models/note_model.dart';
import 'package:dawwen_app/themes/themes.dart';
import 'package:dawwen_app/views/home_view.dart';
import 'package:dawwen_app/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'views/edit_note_view.dart';
import 'views/note_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocOpserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const DawwenApp());
}

class DawwenApp extends StatelessWidget {
  const DawwenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..getAllNotes(),
      child: MaterialApp(
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
      ),
    );
  }
}
