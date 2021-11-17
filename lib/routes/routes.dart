import 'package:fluter_components/screens/home_screen.dart';
import 'package:fluter_components/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String home = '/';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case profile:
        if (args is String) {
          return MaterialPageRoute(
            builder: (context) => ProfileScreen(
              data: args,
            ),
          );
        }

        return _errorRoute();
      default:
        throw const FormatException("check routes");
    }
  }


  //Error page
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Route ERROR"),
        ),
      );
    });
  }
}
