import '../../../data/models/book_model/Items.dart';

abstract class FeaturedBooksStates {}

class InitialBookState extends FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {}
class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<Items> books;
  FeaturedBooksSuccess(this.books);
}
class FeaturedBooksError extends FeaturedBooksStates {
  final String errMessage;
  FeaturedBooksError(this.errMessage);
}