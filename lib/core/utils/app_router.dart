import 'package:bookely/Features/home/presenation/views/home_view.dart';
import 'package:bookely/Features/search/presenation/views/search_view.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/presenation/views/book_deatils_view.dart';
import '../../Features/splash/presenation/views/splash_view.dart';

abstract class AppRouter {
  static const KSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/detailsView',
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
