import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/search/presentation/search_cubit/states.dart';

import '../../../home/data/repos/home_repo.dart';

class SearchBooksCubit extends Cubit<SearchBooksStates>
{
  SearchBooksCubit(this.homeRepo): super(InitialSearchBookState());
  static SearchBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchSearchBooks(String category)async{
    emit(SearchBooksLoading());
    var result = await homeRepo.fetchSearchBooks(category);

    result.fold((failure){
      emit(SearchBooksError(failure.errorMessage));
    }, (books){
      emit(SearchBooksSuccess(books));
    });
  }
}