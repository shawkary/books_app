import 'package:flutter/material.dart';
import 'package:ibrahim_project/constants.dart';
import 'features/splash/presentation/views/splash_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      home: const SplashView(),
    );
  }
}
