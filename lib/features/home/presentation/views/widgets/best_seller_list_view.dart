import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_progress_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_book_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.only(right: 50.0),
                  child: BestSellerItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
