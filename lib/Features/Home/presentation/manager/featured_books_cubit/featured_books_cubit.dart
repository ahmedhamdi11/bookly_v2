import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/use_cases/featch_featured_books_use_case.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit({required this.fetchFeaturedBooksUseCase})
      : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var result = await fetchFeaturedBooksUseCase.excute();

    result.fold(
      (failure) => emit(FeaturedBooksFailureState(failure.errorMessage)),
      (books) => emit(FeaturedBooksSuccessState(books)),
    );
  }
}
