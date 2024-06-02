import '../models/book_model/Items.dart';

abstract class HomeRepo{
  Future<List<Items>> fetchFeaturedBooks();
  Future<List<Items>> fetchNewestBooks();
}