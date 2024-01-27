import 'package:bookly_app/core/utils/styls.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0),
      child: CustomScrollView(
        physics:  BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedBooksListView(),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: BestSellerListView(),
          )
        ],
      ),
    );
  }
}
