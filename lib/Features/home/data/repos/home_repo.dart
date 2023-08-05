import 'package:bookely/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
