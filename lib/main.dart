import 'package:flutter/material.dart';
import 'package:poc/screens/details_step_by_step.dart';
import 'package:poc/screens/nav_pages/home.dart';
import 'package:poc/screens/login.dart';
import 'package:poc/screens/nav_pages/navigation_page.dart';
import 'package:poc/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/register': (context) => const Register(),
        '/home': (context) => const Home(),
        '/step':(context) => const DetailsStepByStep()
      },
    );
  }
}
