import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/constants.dart';
import 'package:ibrahim_project/features/home/data/repos/home_repo_impl.dart';
import 'core/utiles/components.dart';
import 'core/utiles/serice_locator.dart';
import 'features/home/presentation/manager/featured_cubit/cubit.dart';
import 'features/home/presentation/manager/newest_cubit/cubit.dart';
import 'features/splash/presentation/views/splash_view.dart';


void main() {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchFeaturedBooks(),
          ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
        home: const SplashView(),
      ),
    );
  }
}
