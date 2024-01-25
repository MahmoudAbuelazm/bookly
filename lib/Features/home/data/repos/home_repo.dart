import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../model/book/book.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks();
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
}