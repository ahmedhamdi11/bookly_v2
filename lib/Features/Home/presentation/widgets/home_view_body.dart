import 'package:bookly_v2/Features/Home/presentation/widgets/best_seller_books.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/featured_books.dart';
import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          //featured books listView
          FeaturedBooks(),

          //Best seller title
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'Best Seller',
              style: Styles.text18,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //best seller listViw
          BestSellerBooks(),
        ],
      ),
    );

    // return BlocBuilder<NewestBooksCubit, NewestBooksState>(
    //   builder: (context, state) {
    //     if (state is NewestBooksFailureState) {
    //       return FailureUi(
    //         errMessage: state.errMessage,
    //       );
    //     } else {
    //       return SingleChildScrollView(
    //         physics: const BouncingScrollPhysics(),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: const [
    //             //featured books listView
    //             FeaturedBooks(),

    //             //Best seller title
    //             Padding(
    //               padding: EdgeInsets.only(left: 24.0),
    //               child: Text(
    //                 'Best Seller',
    //                 style: Styles.text18,
    //               ),
    //             ),

    //             SizedBox(
    //               height: 20,
    //             ),

    //             //best seller listViw
    //             BestSellerBooks(),
    //           ],
    //         ),
    //       );
    //     }
    //   },
    // );
  }
}
