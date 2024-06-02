import 'package:dartz/dartz.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/Items.dart';
import 'package:ibrahim_project/features/home/data/repos/home_repo.dart';
import '../../../../core/errors/failures.dart';



class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Items>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}