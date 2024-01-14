import 'package:flutter/material.dart';

import '../../../../../core/utils/styls.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              textStyle: Styles.textStyle14.copyWith(color: Colors.black,
              ),
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft:Radius.circular(16.0) ,
                bottomRight: Radius.zero,
                topLeft:Radius.circular(16.0) ,
                topRight: Radius.zero,
              ), text: '19. 99€',
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: const Color(0xffEF8262),
              textStyle:Styles.textStyle16.copyWith(color: Colors.white,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft:Radius.zero,
                bottomRight: Radius.circular(16.0) ,
                topLeft:Radius.zero,
                topRight:Radius.circular(16.0) ,
              ), text: 'Free preview',
            ),
          ),
        ],
      ),
    );
  }
}
