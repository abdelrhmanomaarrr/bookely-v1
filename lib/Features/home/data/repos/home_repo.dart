import 'package:bookely/Features/home/data/models/book_model/book_model.dart';
import 'package:bookely/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
