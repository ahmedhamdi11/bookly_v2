import 'package:bookly_v2/Features/Home/presentation/widgets/book_image.dart';
import 'package:bookly_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({
    super.key,
    //required this.book,
  });
  //final BookModel book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.bookDetailsViewPath,
          //extra: book,
        );
      },
      child: const Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: BookImage(
            borderRadius: 8.0,
            imageUrl:
                'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457' //book.volumeInfo.imageLinks?.thumbnail,
            ),
      ),
    );
  }
}
