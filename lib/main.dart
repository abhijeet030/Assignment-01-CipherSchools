import 'package:cipher_school/Screens/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                fontFamily: 'OpenSans',
                appBarTheme: const AppBarTheme(
                  color: Colors.white,
                )),
            home: Navigation(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
