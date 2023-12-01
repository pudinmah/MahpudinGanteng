import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class OnboardingItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const OnboardingItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 99,
        ),
        Image.asset(
          // 'assets/image_onboarding1.png',
          imageUrl,
          width: double.infinity,
        ),
        const SizedBox(
          height: 127,
        ),
        Text(
          title,
          // 'Buy Furniture Easily',
          style: blackTextStyle.copyWith(
            fontSize: 26,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          subtitle,
          // 'Mahpudin ganteng\n dari gua hiro kera sakti hahaha',
          style: greyTextStyle.copyWith(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
