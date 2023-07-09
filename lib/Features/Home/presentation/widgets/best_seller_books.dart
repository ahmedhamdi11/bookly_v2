import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooks extends StatelessWidget {
  const BestSellerBooks({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => BestSellerItem(
        book: books[index],
      ),
    );
  }
}
