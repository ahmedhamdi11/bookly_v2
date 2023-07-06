import 'package:flutter/material.dart';

import 'featured_book_item.dart';

class FeaturedBooks extends StatelessWidget {
  const FeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 50.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10, //state.books.length,
          itemBuilder: (context, index) => const FeaturedBookItem(
              // book: state.books[index],
              ),
        ),
      ),
    );

    // return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
    //   builder: (context, state) {
    //     if (state is FeaturedBooksSuccessState) {
    //       return Padding(
    //         padding: const EdgeInsets.only(top: 12.0, bottom: 50.0),
    //         child: SizedBox(
    //           height: MediaQuery.of(context).size.height * 0.25,
    //           child: ListView.builder(
    //             scrollDirection: Axis.horizontal,
    //             physics: const BouncingScrollPhysics(),
    //             itemCount: state.books.length,
    //             itemBuilder: (context, index) => FeaturedBookItem(
    //               book: state.books[index],
    //             ),
    //           ),
    //         ),
    //       );
    //     } else if (state is FeaturedBooksFailureState) {
    //       return Center(child: Text(state.errMessage));
    //     } else {
    //       return const FeaturedBooksShimmer();
    //     }
    //   },
    // );
  }
}
