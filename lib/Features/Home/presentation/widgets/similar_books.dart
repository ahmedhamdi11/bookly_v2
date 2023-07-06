import 'package:bookly_v2/Features/Home/presentation/widgets/similar_books_item.dart';
import 'package:flutter/material.dart';

class SimilarBooks extends StatelessWidget {
  const SimilarBooks({
    super.key,
    //required this.book,
  });
  //final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (state.book.isNotEmpty)
          const Text(
            'You can also like',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          //if (state.book.isNotEmpty)
          const SizedBox(
            height: 16.0,
          ),
          //if (state.book.isNotEmpty)
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 10, //state.book.length,
              itemBuilder: (context, index) => SimilarBooksItem(
                  // book: state.book[index],
                  ),
            ),
          ),
        ],
      ),
    );

    // return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
    //   builder: (context, state) {
    //     if (state is SimilarBooksSuccessState) {

    //     } else if (state is SimilarBooksFailureState) {
    //       return Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 24.0),
    //         child: Column(
    //           children: [
    //             Text(
    //               state.errMessage,
    //               style: Styles.text14,
    //               textAlign: TextAlign.center,
    //             ),
    //             TextButton(
    //               onPressed: () {
    //                 BlocProvider.of<SimilarBooksCubit>(context)
    //                     .fetchSimilarBooks(
    //                         category:
    //                             book.volumeInfo.categories?[0] ?? 'success');
    //               },
    //               child: const Text('try again'),
    //             ),
    //           ],
    //         ),
    //       );
    //     } else {
    //       return const SimilarBooksShimmer();
    //     }
    //   },
    // );
  }
}
