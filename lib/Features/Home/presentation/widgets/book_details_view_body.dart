import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_actions.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_desc.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_details.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_image.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/similar_books.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.book,
  });
  final BookEntity book;
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
            child: BookImage(
              imageUrl: book.image,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),

          //book (title,author,rating)
          BookDetails(
            book: book,
          ),
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
          BookDesc(
            book: book,
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
