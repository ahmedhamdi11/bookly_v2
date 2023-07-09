import 'package:bloc/bloc.dart';
import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/use_cases/featch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.fetchNewestBooksUseCase})
      : super(NewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await fetchNewestBooksUseCase.excute();

    result.fold(
      (failure) => emit(NewestBooksFailureState(failure.errorMessage)),
      (books) => emit(NewestBooksSuccessState(books)),
    );
  }
}
