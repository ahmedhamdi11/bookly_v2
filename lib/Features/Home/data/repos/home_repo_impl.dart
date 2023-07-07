import 'package:bookly_v2/Features/Home/data/data_source/home_local_data_source.dart';
import 'package:bookly_v2/Features/Home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/Features/Home/domain/repos/home_repo.dart';
import 'package:bookly_v2/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemotDataSource homeRemotDataSource;

  HomeRepoImpl({
    required this.homeLocalDataSource,
    required this.homeRemotDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> featchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      } else {
        books = await homeRemotDataSource.fetchFeaturedBooks();
        return right(books);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> featchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      } else {
        books = await homeRemotDataSource.fetchNewestBooks();
        return right(books);
      }
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
