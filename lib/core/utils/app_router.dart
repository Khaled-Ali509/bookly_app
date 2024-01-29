import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/Book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/Views/widgets/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashViewBody();
        },
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) =>  BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
