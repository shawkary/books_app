import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/book_model/Items.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Items>>> fetchNewestBooks();
}