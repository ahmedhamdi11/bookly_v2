import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_v2/Features/Home/presentation/manager/newest_books_cubit/featured_books_cubit.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/best_seller_books.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/featured_books.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/featured_books_shimmer.dart';
import 'package:bookly_v2/Features/Home/presentation/widgets/newest_books_shimmer.dart';
import 'package:bookly_v2/core/utils/syles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //featured books listView
          const FeaturedBooksBlocConsumer(),

          // Newest Books title
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              'Newest Books',
              style: Styles.text18,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          //best seller listViw
          BlocBuilder<NewestBooksCubit, NewestBooksState>(
            builder: (context, state) {
              if (state is NewestBooksSuccessState) {
                return BestSellerBooks(
                  books: state.newestBooks,
                );
              } else if (state is NewestBooksFailureState) {
                return Text(state.errMessage);
              } else {
                return const NewestBooksShimmer();
              }
            },
          ),
        ],
      ),
    );
  }
}

class FeaturedBooksBlocConsumer extends StatefulWidget {
  const FeaturedBooksBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedBooksBlocConsumer> createState() =>
      _FeaturedBooksBlocConsumerState();
}

class _FeaturedBooksBlocConsumerState extends State<FeaturedBooksBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          books.addAll(state.featuredBooks);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState ||
            state is FeaturedBooksPaginationLoadingState ||
            state is FeaturedBooksPaginationFailureState) {
          return FeaturedBooks(
            books: books,
          );
        } else if (state is FeaturedBooksFailureState) {
          return Text(state.errMessage);
        } else {
          return const FeaturedBooksShimmer();
        }
      },
    );
  }
}
