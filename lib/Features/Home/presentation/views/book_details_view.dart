import 'package:bookly_v2/Features/Home/presentation/widgets/book_details_view_body.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({
    super.key,
    //required this.book,
  });
  //final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();

    // BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
    //     category: widget.book.volumeInfo.categories?[0] ?? 'success');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: BookDetailsViewBody(
          // book: widget.book,
          ),
    );
  }
}
