import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_book_item.dart';

class FeaturedBooks extends StatefulWidget {
  const FeaturedBooks({
    super.key,
    required this.books,
  });
  final List<BookEntity> books;

  @override
  State<FeaturedBooks> createState() => _FeaturedBooksState();
}

class _FeaturedBooksState extends State<FeaturedBooks> {
  late ScrollController _controller;
  int nextPage = 1;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();

    _controller.addListener(() async {
      var currentPosition = _controller.position.pixels;
      var maxPosition = _controller.position.maxScrollExtent;
      if (currentPosition >= 0.7 * maxPosition) {
        if (!isLoading) {
          isLoading = true;
          await BlocProvider.of<FeaturedBooksCubit>(context)
              .fetchFeaturedBooks(pageNumber: nextPage++);
          isLoading = false;
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 50.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: widget.books.length, //state.books.length,
          itemBuilder: (context, index) => FeaturedBookItem(
            book: widget.books[index],
          ),
        ),
      ),
    );
  }
}
