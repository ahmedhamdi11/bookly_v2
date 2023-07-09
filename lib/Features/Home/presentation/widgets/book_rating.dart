import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.rate,
    required this.count,
  });
  final num? rate;
  final num? count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 3.0,
        ),
        Text(
          '${rate ?? '-'}',
          style: Styles.text16,
        ),
        const SizedBox(
          width: 9.0,
        ),
        Text(
          count == null ? '0' : '($count)',
          style: Styles.text14,
        )
      ],
    );
  }
}
