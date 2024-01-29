import 'package:bookly_app/features/home/data/models/Book_model.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../data/repos/home_repo_impl.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(
        getIt.get<HomeRepoImpl>()
      )..fetchSimilarBooks(category: bookModel.volumeInfo.categories![0]),
      child:  Scaffold(
        body: SafeArea(child: BookDetailsViewBody(bookModel:bookModel ,)),
      ),
    );
  }
}
