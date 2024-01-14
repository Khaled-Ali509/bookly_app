import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class BookListInDetails extends StatelessWidget {
  const BookListInDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height *.15,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index)
          {
            return  Padding(
              padding:  const EdgeInsets.only(
                right: 5.0,
              ),
              child:  CustomBookItem(borderRadius: BorderRadius.circular(11.0),),
            );
          }
      ),
    );;
  }
}
