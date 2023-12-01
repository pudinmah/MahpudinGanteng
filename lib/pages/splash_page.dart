import 'dart:async';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      // Navigator.pushNamedAndRemoveUntil(context, '/onboarding');
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackAccentColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'a ssets/logo_light.png',
            //   width: 98,
            // ),
            Container(
              width: 98,
              height: 82,
              margin: const EdgeInsets.only(right: 16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo_light.png'),
                ),
              ),
            ),
            Text(
              'Space',
              style: whiteTextStyle.copyWith(fontSize: 36, fontWeight: bold),
            ),
          ],
        ),
      ),
    );
  }
}
