import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_v2/Features/Home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String bookDetailsViewPath = '/bookDetailsView';
  static String searchViewPath = '/searchView';
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: searchViewPath,
      //   builder: (context, state) => BlocProvider(
      //     create: (context) =>
      //         SearchCubit(searchRepo: getIt.get<SearchRepoImpl>()),
      //     child: const SearchView(),
      //   ),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsViewPath,
        builder: (context, state) =>
            BookDetailsView(book: state.extra as BookEntity),
        // BlocProvider(
        //   create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        //   child: BookDetailsView(
        //     book: state.extra as BookModel,
        //   ),
        // ),
      ),
    ],
  );
}
