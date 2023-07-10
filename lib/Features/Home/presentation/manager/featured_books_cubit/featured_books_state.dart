part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoadingState extends FeaturedBooksState {}

class FeaturedBooksPaginationLoadingState extends FeaturedBooksState {}

class FeaturedBooksSuccessState extends FeaturedBooksState {
  final List<BookEntity> featuredBooks;

  const FeaturedBooksSuccessState(this.featuredBooks);
}

class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksFailureState(this.errMessage);
}

class FeaturedBooksPaginationFailureState extends FeaturedBooksState {
  final String errMessage;

  const FeaturedBooksPaginationFailureState(this.errMessage);
}
