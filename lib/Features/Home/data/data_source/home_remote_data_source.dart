import 'package:bookly_v2/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/core/utils/api_services.dart';

abstract class HomeRemotDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemotDataSource {
  final ApiServices _apiServices;

  HomeRemoteDataSourceImpl(this._apiServices);

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await _apiServices.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }
}
