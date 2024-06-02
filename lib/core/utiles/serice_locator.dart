import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import 'dio_helper.dart';


final getIt = GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<DioHelper>(DioHelper(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<DioHelper>(),
  ));
}