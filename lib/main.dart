import 'package:bokkly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookly App',
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
      ),
      home: const SplashView(),
    );
  }
}
