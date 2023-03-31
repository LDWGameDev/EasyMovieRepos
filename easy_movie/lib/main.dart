import 'package:easy_movie/config/global_config.dart';
import 'package:flutter/material.dart';
import 'modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Movie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: AppColors.darkerBackground,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppColors.white, 
          displayColor: AppColors.white,
        )
      ),
      home: const HomePage(),
    );
  }
}