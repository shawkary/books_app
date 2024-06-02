import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/home/presentation/manager/newest_cubit/states.dart';
import '../../../data/repos/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates>
{
  NewestBooksCubit(this.homeRepo): super(InitialNewestBookState());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks()async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure){
      emit(NewestBooksError(failure.errorMessage));
    }, (books){
      emit(NewestBooksSuccess(books));
    });
  }
}