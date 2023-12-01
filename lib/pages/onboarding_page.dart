import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/onboarding_itme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: const [
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding1.png',
                  title: 'Buy Furniture Easily',
                  subtitle:
                      'Mahpudin ganteng\n dari gua hiro kera sakti hahaha',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding2.png',
                  title: 'Fast Delivery',
                  subtitle:
                      'Mahpudin ganteng\n dari gua hiro kera sakti hahaha',
                ),
                OnboardingItem(
                  imageUrl: 'assets/image_onboarding3.png',
                  title: 'Bast Price',
                  subtitle:
                      'Mahpudin ganteng\n dari gua hiro kera sakti hahaha',
                ),
              ],
              options: CarouselOptions(
                  height: double.infinity,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  initialPage: currentIndex,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: controller,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                      // controller.animateToPage(2);
                    },
                    child: Text(
                      'SKIP',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 0
                                ? kBlackColor
                                : kLineDarkColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 1
                                ? kBlackColor
                                : kLineDarkColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == 2
                                ? kBlackColor
                                : kLineDarkColor),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      if (currentIndex == 2) {
                        Navigator.pushNamed(context, '/sign-in');
                      } else {
                        controller.nextPage();
                      }
                    },
                    child: Text(
                      'NEXT',
                      style: blackTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 29,
          )
        ],
      ),
    );
  }
}
