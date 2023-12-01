import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomeCategoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  const HomeCategoryItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 102,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBlod),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: greyTextStyle.copyWith(fontWeight: semiBlod),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Image.asset(
          imageUrl,
          height: 122,
        ),
      ]),
    );
  }
}
