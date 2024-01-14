import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.28,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
          itemBuilder: (context , index)
          {
            return  Padding(
              padding:const  EdgeInsets.only(
                right: 15.0,
              ),
              child:  CustomBookItem(borderRadius: BorderRadius.circular(16.0),),
            );
          }
      ),
    );
  }
}
