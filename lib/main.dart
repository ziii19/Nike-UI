import 'package:flutter/material.dart';
import 'package:nike/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nike Store',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoadingScreen(),
    );
  }
}
