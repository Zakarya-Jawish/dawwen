import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
    );
  }
}
