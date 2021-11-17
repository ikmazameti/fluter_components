import 'package:fluter_components/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Routing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display HomeScreen
      initialRoute: RouteManager.home,
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
