import 'package:bookly_v2/core/constants.dart';
import 'package:bookly_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //setUpGetIt();
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
