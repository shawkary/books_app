import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/data/repos/home_repo.dart';
import 'package:ibrahim_project/features/home/presentation/manager/featured_cubit/states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.homeRepo): super(InitialBookState());

  final HomeRepo homeRepo;


  Future<void> fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure){
      emit(FeaturedBooksError(failure.errorMessage));
    }, (books){
      emit(FeaturedBooksSuccess(books));
    });
  }
}