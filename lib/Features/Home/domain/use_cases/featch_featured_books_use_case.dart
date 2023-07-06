import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/repos/home_repo.dart';
import 'package:bookly_v2/core/errors/failure.dart';
import 'package:bookly_v2/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FeatchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> excute([void param]) async {
    throw await homeRepo.featchFeaturedBooks();
  }
}
