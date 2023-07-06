import 'package:bookly_v2/Features/Home/presentation/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooks extends StatelessWidget {
  const BestSellerBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const BestSellerItem(
        image:
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457',
      ),
    );
  }
}
