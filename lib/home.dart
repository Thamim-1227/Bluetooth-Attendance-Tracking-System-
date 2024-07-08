import 'package:flutter/material.dart';
import 'package:hyperev/pages/login/login.dart';
import 'package:hyperev/pages/signup/signup.dart';

import 'app_style.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routes: {
        // "/":(context) => const home(),
        Signup.id: (context) => const Signup(),
        Login.id: (context) => const Login(),
      },
      home: const Login(),
    );
  }
}
