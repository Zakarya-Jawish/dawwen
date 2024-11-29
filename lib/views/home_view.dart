import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          'Notes',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 35,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
