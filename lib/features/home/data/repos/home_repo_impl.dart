import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ibrahim_project/features/home/data/models/book_model/Items.dart';
import 'package:ibrahim_project/features/home/data/repos/home_repo.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utiles/dio_helper.dart';



class HomeRepoImpl implements HomeRepo{
  HomeRepoImpl(this.dioHelper);
  final DioHelper dioHelper;


  @override
  Future<Either<Failure, List<Items>>> fetchFeaturedBooks()async {
    try {
      var data = await dioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=programming');
      List<Items> books = [];
      for(var item in data['items']){
        books.add(Items.fromJson(item));
      }
      return right(books);
    }catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Items>>> fetchNewestBooks()async {
    try {
      var data = await dioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
      List<Items> books = [];
      for(var item in data['items']){
        books.add(Items.fromJson(item));
      }
      return right(books);
    }catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Items>>> fetchSimilarBooks()async {
    try {
      var data = await dioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=programming');
      List<Items> books = [];
      for(var item in data['items']){
        books.add(Items.fromJson(item));
      }
      return right(books);
    }catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}