import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_ticket_app/config/app_asset/appasset.dart';
import 'package:movie_ticket_app/config/color/appColors.dart';
import 'package:movie_ticket_app/model/category/category.dart';
import 'package:movie_ticket_app/module/home/splash/splash_screen.dart';

import 'module/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.darkerBackground,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'montserrat',
        scaffoldBackgroundColor: AppColors.darkerBackground,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: AppColors.white,
          displayColor: AppColors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}

