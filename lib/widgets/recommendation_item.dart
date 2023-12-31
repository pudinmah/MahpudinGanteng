import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class RecommendationItem extends StatelessWidget {
  final String title;
  final int price;
  final String imageUrl;
  const RecommendationItem(
      {super.key,
      required this.title,
      required this.price,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 60,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBlod),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '\$$price',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBlod),
              ),
            ],
          )
        ],
      ),
    );
  }
}
