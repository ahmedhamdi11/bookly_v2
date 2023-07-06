import 'package:bookly_v2/Features/Home/presentation/widgets/book_actions.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_desc.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_details.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_image.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/similar_books.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    //required this.book,
  });
  //final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),

          //book image
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: const BookImage(
              imageUrl:
                  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457',
              // imageUrl: book.volumeInfo.imageLinks?.thumbnail,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),

          //book (title,author,rating)
          const BookDetails(),
          const SizedBox(
            height: 37.0,
          ),

          //book actions (buy,free previw)button
          const BookActions(
              //book: book,
              ),
          const SizedBox(
            height: 46.0,
          ),

          //book desc
          const BookDesc(
              //book: book,
              ),

          //similar books (title,BookslistView)
          const SimilarBooks(
              // book: book,
              ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
