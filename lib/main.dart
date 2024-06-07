import 'package:flutter/material.dart';
import 'screens/screeans.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Products App",
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          'login': (context) => const LoginScreen(),
          'home': (context) => const HomeScreen(),
        },
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(255, 48, 55, 98),
        ));
  }
}
