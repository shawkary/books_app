import '../../../data/models/book_model/Items.dart';

abstract class NewestBooksStates {}

class InitialNewestBookState extends NewestBooksStates {}

class NewestBooksLoading extends NewestBooksStates {}
class NewestBooksSuccess extends NewestBooksStates {
  final List<Items> books;
  NewestBooksSuccess(this.books);
}
class NewestBooksError extends NewestBooksStates {
  final String errMessage;
  NewestBooksError(this.errMessage);
}