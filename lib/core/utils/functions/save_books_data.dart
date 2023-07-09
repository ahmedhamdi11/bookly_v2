import 'package:bookly_v2/Features/Home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData({required List<BookEntity> books, required String boxName}) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}
