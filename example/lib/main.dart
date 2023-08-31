import 'package:flutter/material.dart';
import 'package:go_router_extension/go_router_extension.dart';

@ClassNameAnnotation(className: HomeScreen)
const String home = '/home';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('go router exntension'),
        ),
        body: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('home screen'),
    );
  }
}
