import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'home here',
          style: TextStyle(fontFamily: 'BalooBhaijaan2', fontSize: 40),
        ),
      ),
    );
  }
}
