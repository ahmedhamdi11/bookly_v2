import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/repos/home_repo.dart';
import 'package:bookly_v2/core/errors/failure.dart';
import 'package:bookly_v2/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> excute([int param = 0]) async {
    return await homeRepo.featchFeaturedBooks(param);
  }
}
