import 'dart:async';

import 'package:dawwen_app/helper/constants.dart';
import 'package:dawwen_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String id = 'splash_view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2500), () {
      Navigator.of(context).pushReplacementNamed(HomeView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimayColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
                width: 500,
                height: 500,
                child: Lottie.asset('assets/lotties/logo.json',
                    frameRate: FrameRate.max)),
            const Spacer(),
            const Text('DAWWEN',
                style: TextStyle(fontSize: 30, color: Colors.white)),
            const Text('by JAWISH💻',
                style: TextStyle(fontSize: 15, color: Colors.white)),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
