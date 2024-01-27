import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_item.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(

        itemCount: 10,
        itemBuilder: (context , index)
        {
          return const Text('data');
        }
    );
  }
}
