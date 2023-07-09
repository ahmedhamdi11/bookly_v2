part of 'featured_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoadingState extends NewestBooksState {}

class NewestBooksSuccessState extends NewestBooksState {
  final List<BookEntity> newestBooks;

  const NewestBooksSuccessState(this.newestBooks);
}

class NewestBooksFailureState extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailureState(this.errMessage);
}
