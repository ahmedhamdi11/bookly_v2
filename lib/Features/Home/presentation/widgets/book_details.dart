import 'package:bookly_v2/Features/Home/presentation/widgets/book_rating.dart';
import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    //required this.book,
  });
  //final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          //book titl
          const Text(
            // book.volumeInfo.title ?? '',
            'the booke title',
            style: Styles.text30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4.0,
          ),

          //book author
          Text(
            //book.volumeInfo.authors?[0] ?? '',
            'the book author',
            style: Styles.text18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 14.0,
          ),
          const BookRating(
              count: 60, //book.volumeInfo.ratingsCount,
              rate: 8.0 //book.volumeInfo.averageRating,
              ),
        ],
      ),
    );
  }
}
