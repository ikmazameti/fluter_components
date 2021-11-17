import 'package:fluter_components/components/nav_drawer.dart';
import 'package:fluter_components/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          title: const Text('Routing App'),
        ),
        body: const Body());
  }
}
