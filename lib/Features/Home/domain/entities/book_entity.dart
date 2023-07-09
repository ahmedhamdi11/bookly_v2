import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 1)
class BookEntity {
  @HiveField(0)
  final String? image;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String? authorName;

  @HiveField(3)
  final num? rating;

  @HiveField(4)
  final num? rateCount;

  @HiveField(5)
  final String? desc;

  @HiveField(6)
  final String? language;

  @HiveField(7)
  final String? publisher;

  @HiveField(8)
  final String? publisheDate;

  const BookEntity({
    required this.image,
    required this.title,
    required this.authorName,
    required this.rating,
    required this.rateCount,
    required this.desc,
    required this.language,
    required this.publisher,
    required this.publisheDate,
  });
}
