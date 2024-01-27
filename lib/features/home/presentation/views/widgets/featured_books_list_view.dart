import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 15.0,
                    ),
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail! ?? '',
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
