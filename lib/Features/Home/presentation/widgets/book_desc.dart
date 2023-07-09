import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';

class BookDesc extends StatelessWidget {
  const BookDesc({
    super.key,
    required this.book,
  });
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32.0),
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //desc
          const Text(
            'description:',
            style: Styles.text16,
          ),
          Text(
            'this is the book description',
            style: Styles.text14,
          ),
          const SizedBox(
            height: 6.0,
          ),

          //language
          const Text(
            'language:',
            style: Styles.text16,
          ),
          Text(
            'English',
            // book.volumeInfo.language ?? '-',
            style: Styles.text14,
          ),
          const SizedBox(
            height: 6.0,
          ),

          //publisher
          const Text(
            'publisher:',
            style: Styles.text16,
          ),
          Text(
            //book.volumeInfo.publisher ?? '-',
            'publisher name',
            style: Styles.text14,
            maxLines: 2,
          ),
          const SizedBox(
            height: 6.0,
          ),

          //publish date
          const Text(
            'published at:',
            style: Styles.text16,
          ),
          Text(
            //book.volumeInfo.publishedDate ?? '-',
            '2019',
            style: Styles.text14,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
