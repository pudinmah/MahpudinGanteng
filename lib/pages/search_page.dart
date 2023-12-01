import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/recommendation_item.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteGreyColor,
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: kWhiteColor,
            elevation: 0,
            title: Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: kWhiteGreyColor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.go,
                            onFieldSubmitted: (value) {
                              Navigator.pushNamed(context, '/search-result');
                            },
                            decoration: const InputDecoration.collapsed(
                                hintText: 'Search furniture'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.close,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            const SizedBox(
              height: 41,
            ),
            Text(
              'Recommendedation',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBlod,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const RecommendationItem(
                title: 'Poan Chair',
                price: 20,
                imageUrl: 'assets/image_product_list1.png'),
            const RecommendationItem(
                title: 'Poan Chair',
                price: 24,
                imageUrl: 'assets/image_product_list2.png'),
            const RecommendationItem(
                title: 'Poan Chair',
                price: 28,
                imageUrl: 'assets/image_product_list3.png'),
            const RecommendationItem(
                title: 'Poan Chair',
                price: 50,
                imageUrl: 'assets/image_product_list4.png'),
          ],
        ));
  }
}
