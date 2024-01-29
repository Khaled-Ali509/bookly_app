import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/Book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
