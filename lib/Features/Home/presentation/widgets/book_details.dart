import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_rating.dart';
import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.book,
  });
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          //book titl
          Text(
            book.title,
            style: Styles.text30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4.0,
          ),

          //book author
          Text(
            book.authorName ?? '',
            style: Styles.text18.copyWith(
                color: Colors.white.withOpacity(0.7),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 14.0,
          ),
          BookRating(count: book.rateCount, rate: book.rating),
        ],
      ),
    );
  }
}
