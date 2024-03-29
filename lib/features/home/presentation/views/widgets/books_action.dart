import 'package:bookly_app/features/home/data/models/Book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/functions/launch_url.dart';
import '../../../../../core/utils/styls.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

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
              onPressed: () {},
              textStyle: Styles.textStyle14.copyWith(
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.zero,
                topLeft: Radius.circular(16.0),
                topRight: Radius.zero,
              ),
              text: 'Free',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(
                  context,
                  bookModel.volumeInfo.previewLink,
                );
              },
              backgroundColor: const Color(0xffEF8262),
              textStyle: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.zero,
                bottomRight: Radius.circular(16.0),
                topLeft: Radius.zero,
                topRight: Radius.circular(16.0),
              ),
              text: getText(bookModel),
            ),
          ),
        ],
      ),
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Free preview';
    }
  }
}
