import '../../../data/models/book_model/Items.dart';

abstract class SimilarBooksStates {}

class InitialSimilarBookState extends SimilarBooksStates {}

class SimilarBooksLoading extends SimilarBooksStates {}
class SimilarBooksSuccess extends SimilarBooksStates {
  final List<Items> books;
  SimilarBooksSuccess(this.books);
}
class SimilarBooksError extends SimilarBooksStates {
  final String errMessage;
  SimilarBooksError(this.errMessage);
}