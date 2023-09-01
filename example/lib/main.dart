import 'package:flutter/material.dart';
import 'package:go_router_extension/go_router_extension.dart';
import 'package:path/path.dart';

extension MyRouteBuilder on MyRoute {
  @PageLinkAnnotation(page: HomeScreen)
  static MyRoute get home => MyRoute('/home');

  @PageLinkAnnotation(page: DetailScreen)
  MyRoute get detail => MyRoute(join(path, 'detail'));
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var path = MyRouteBuilder.home.build();
    return Scaffold(
      appBar: AppBar(
        title: Text('path:$path'),
        centerTitle: true,
      ),
      body: const Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: DetailScreen()
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var path = MyRouteBuilder.home.detail.build();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text('path:$path'),
      ),
    );
  }
}
