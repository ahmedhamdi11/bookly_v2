import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_image.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/book_rating.dart';
import 'package:bookly_v2/core/constants.dart';
import 'package:bookly_v2/core/utils/app_router.dart';
import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(
            AppRouter.bookDetailsViewPath,
          );
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              //book image
              BookImage(
                borderRadius: 8.0,
                imageUrl: book.image,
              ),
              const SizedBox(
                width: 30.0,
              ),

              //book details(title,author,rating)
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //book title
                    BestSellerItemTitle(
                      title: book.title,
                    ),
                    const SizedBox(
                      height: 3.0,
                    ),

                    //author name
                    Text(
                      book.authorName ?? '',
                      style: Styles.text14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),

                    //book rating
                    const Row(
                      children: [
                        BookRating(
                          rate: 8.5,
                          count: 50,
                        ),

                        // if (book.accessInfo?.pdf?.downloadLink != null)
                        //   const Spacer(),
                        // if (book.accessInfo?.pdf?.downloadLink != null)
                        //   Text(
                        //     'pdf',
                        //     style: Styles.text14,
                        //   ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

////////book title///////////
class BestSellerItemTitle extends StatelessWidget {
  const BestSellerItemTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        title,
        style: Styles.text20.copyWith(
          fontFamily: kGTSectraFineFontFamily,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
