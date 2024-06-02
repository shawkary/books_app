import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/similar_cubit/states.dart';
import '../../../data/repos/home_repo.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates>
{
  SimilarBooksCubit(this.homeRepo): super(InitialSimilarBookState());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks()async{
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks();

    result.fold((failure){
      emit(SimilarBooksError(failure.errorMessage));
    }, (books){
      emit(SimilarBooksSuccess(books));
    });
  }
}