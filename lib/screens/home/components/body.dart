import 'package:fluter_components/routes/routes.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            'Home Screen',
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            child: const Text('Go to Profile Screen'),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(RouteManager.profile, arguments: "hello there");
            },
          )
        ],
      ),
    );
  }
}
