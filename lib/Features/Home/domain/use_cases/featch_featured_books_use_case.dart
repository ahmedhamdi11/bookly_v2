import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/repos/home_repo.dart';
import 'package:bookly_v2/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FeatchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> featchFeaturedBooks() {
    return homeRepo.featchFeaturedBooks();
  }
}
