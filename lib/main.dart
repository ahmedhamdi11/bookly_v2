import 'package:bookly_v2/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/use_cases/featch_featured_books_use_case.dart';
import 'package:bookly_v2/Features/Home/domain/use_cases/featch_newest_books_use_case.dart';
import 'package:bookly_v2/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_v2/Features/Home/presentation/manager/newest_books_cubit/featured_books_cubit.dart';
import 'package:bookly_v2/core/constants.dart';
import 'package:bookly_v2/core/utils/app_router.dart';
import 'package:bookly_v2/core/utils/bloc_observer.dart';
import 'package:bookly_v2/core/utils/functions/setup_service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  setupServiceLocator();

  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBooksBox);
  await Hive.openBox<BookEntity>(kNewestBooksBox);

  runApp(const BooklyAppV2());
}

class BooklyAppV2 extends StatelessWidget {
  const BooklyAppV2({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            fetchFeaturedBooksUseCase: FetchFeaturedBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            fetchNewestBooksUseCase: FetchNewestBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );

    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
    //         ..fetchFeaturedBooks(),
    //     ),
    //     BlocProvider(
    //       create: (context) =>
    //           NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
    //     ),
    //   ],
    //   child: MaterialApp.router(
    //     routerConfig: AppRouter.router,
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData.dark().copyWith(
    //         scaffoldBackgroundColor: kPrimaryColor,
    //         textTheme:
    //             GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    //   ),
    // );
  }
}
