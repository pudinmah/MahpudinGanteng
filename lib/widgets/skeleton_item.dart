import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class SkeletonItem extends StatelessWidget {
  const SkeletonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 66) / 2,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            Shimmer.fromColors(
                child: Container(
                  width: double.infinity,
                  height: 122,
                ),
                baseColor: kLineDarkColor,
                highlightColor: kWhiteGreyColor)
          ],
        ),
      ),
    );
  }
}
