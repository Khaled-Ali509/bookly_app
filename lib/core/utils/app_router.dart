import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/Views/widgets/splash_view.dart';

abstract class AppRouter
{
 static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: ( context, state) {
          return const SplashViewBody();
        },
      ),

      GoRoute(
        path: '/homeView',
        builder: ( context, state) {
          return const HomeView();
        },
      ),

      GoRoute(
        path: '/bookDetailsView',
        builder: ( context, state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: '/searchView',
        builder: ( context, state) {
          return const SearchView();
        },
      ),
    ],
  );

}