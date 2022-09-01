import 'package:doc_app_provider/screens/login_screen.dart';
import 'package:doc_app_provider/screens/signup.dart';
import 'package:doc_app_provider/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login/": (context) => const LoginScreen(),
        "signup/": (context) => const SignupScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'The DocApp',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstant.whiteColor,
      ),
      home: const LoginScreen(),
    );
  }
}
