import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';

abstract class HomeRemotDataSource {
  Future<List<BookEntity>> featchFeaturedBooks();
  Future<List<BookEntity>> featchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemotDataSource {
  @override
  Future<List<BookEntity>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> featchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }
}
