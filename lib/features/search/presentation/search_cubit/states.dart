import '../../../home/data/models/book_model/Items.dart';

abstract class SearchBooksStates {}

class InitialSearchBookState extends SearchBooksStates {}

class SearchBooksLoading extends SearchBooksStates {}
class SearchBooksSuccess extends SearchBooksStates {
  final List<Items> searchBooks;
  SearchBooksSuccess(this.searchBooks);
}
class SearchBooksError extends SearchBooksStates {
  final String errMessage;
  SearchBooksError(this.errMessage);
}