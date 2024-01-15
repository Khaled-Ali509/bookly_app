import 'package:bookly_app/features/search/presentation/views/widgets/search_result.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styls.dart';
import 'custom_search_textField.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
          top: 60.0,
        right: 30.0,
        left: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Search Result',
              style: Styles.textStyle18,
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(child: SearchResultView()),
          ],
        ),
    );
  }
}
