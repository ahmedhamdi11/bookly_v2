import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_image.dart';
import 'package:bookly_v2/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({
    super.key,
    required this.book,
  });
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(AppRouter.bookDetailsViewPath, extra: book
              //extra: book,
              );
        },
        child: BookImage(
          imageUrl: book.image ??
              'https://cor-cdn-static.bibliocommons.com/assets/default_covers/icon-book-93409e4decdf10c55296c91a97ac2653.png',
        ),
      ),
    );
  }
}
