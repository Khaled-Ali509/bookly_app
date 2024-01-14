import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styls.dart';
import 'book_rating.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        GoRouter.of(context).push('/bookDetailsView');
      },
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 20.0,
          right: 50.0
        ),
        child: SizedBox(
          height: 105.0,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.8/3.5,
                child: Container(
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: Colors.blue,
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image:  AssetImage(
                          AssetData.testImage,
                        ),
                      )
                  ),
                ),
              ),
               const SizedBox(width: 30,),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width:MediaQuery.of(context).size.width*.5 ,
                      child:  Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20.
                        copyWith( fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2,),
                    const Text(
                      'J.K. Rowling',
                      style: Styles.textStyle14,
                    ),
                     Row(
                      children: [
                        Text(
                          '19.99 €',
                          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const BookRating()

                      ],
                    ),
                  ],
              ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}



