import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styls.dart';

class BookRating extends StatelessWidget {
  const BookRating({
  this.mainAxisAlignment = MainAxisAlignment.start, super.key }) ;
final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        SizedBox(width: 6.3,),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 9.0,),
        Opacity(
          opacity: .5,
          child: Text(
            '(2547)',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}