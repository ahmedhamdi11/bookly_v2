import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_v2/core/constants.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber});
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    var box = Hive.box<BookEntity>(kFeaturedBooksBox);
    int lenght = box.values.length;
    int nextPage = pageNumber * 10;
    int last = (pageNumber + 1) * 10;
    if (nextPage >= lenght || last > lenght) {
      return [];
    } else {
      return box.values.toList().sublist(nextPage, last);
    }
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBooksBox);
    return box.values.toList();
  }
}
