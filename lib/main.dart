import 'package:dawwen_app/views/home_view.dart';
import 'package:dawwen_app/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
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
      },
      initialRoute: SplashView.id,
      // home: const Splash(),
    );
  }
}
