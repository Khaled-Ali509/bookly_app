import 'package:flutter/material.dart';
import 'best_seller_item.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context , index)
        {
          return const BestSellerItem();
        }
    );
  }
}
