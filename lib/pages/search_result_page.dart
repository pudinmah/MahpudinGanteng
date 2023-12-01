import 'package:flutter/material.dart';
import 'package:space/theme.dart';
import 'package:space/widgets/skeleton_item.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 110),
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
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Image.asset(
                    'assets/icon_filter.png',
                    width: 24,
                  )
                ],
              ),
              bottom: TabBar(
                indicatorColor: kBlackColor,
                labelColor: kBlackColor,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Chair',
                  ),
                  Tab(
                    text: 'Table',
                  ),
                  Tab(
                    text: 'Accecssories',
                  ),
                  Tab(
                    text: 'Livig Room',
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            buildBody(),
            buildBody(),
            buildBody(),
            buildBody(),
          ])),
    );
  }

  Widget buildBody() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Result for : Poang',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBlod),
            ),
            Image.asset(
              'assets/icon_list.png',
              width: 24,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget buildLoading() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 18,
      runSpacing: 18,
      children: [
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
        SkeletonItem(),
      ],
    );
  }

  Widget buildGrid() {
    return Container();
  }
}
