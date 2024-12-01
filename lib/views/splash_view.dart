import 'dart:async';

import 'package:dawwen_app/extensions/context_ex.dart';
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
      backgroundColor: kPrimaryColor,
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
            Text(
              'DAWWEN',
              style: context.textTheme.displayLarge,
            ),
            Text('by JAWISH💻', style: context.textTheme.bodyMedium),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
