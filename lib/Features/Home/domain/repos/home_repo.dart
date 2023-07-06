import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<BookEntity> featchFeaturedBooks();
  Future<BookEntity> featchNewestBooks();
}
