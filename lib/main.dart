import 'package:flutter/material.dart';
import 'package:form_validation_productsapp_example/services/services.dart';
import 'package:provider/provider.dart';
import 'screens/screens.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductsService(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Products App",
      //home: const LoginScreen(),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (context) => const LoginScreen(),
        'home': (context) => const HomeScreen(),
        'product': (context) => const ProductScreen(),
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 48, 55, 98),
        iconTheme: IconThemeData(color: Colors.green.shade200),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 48, 55, 98),
          elevation: 0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 69, 71, 86),
        ),
      ),
    );
  }
}
