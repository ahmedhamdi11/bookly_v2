import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/core/constants.dart';
import 'package:bookly_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBooksBox);
  await Hive.openBox(kNewestBooksBox);

  runApp(const BooklyAppV2());
}

class BooklyAppV2 extends StatelessWidget {
  const BooklyAppV2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
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
