import 'package:block_demo/utilities/routes/route_names.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: MaterialButton(onPressed: () {
            Navigator.pushNamed(context, postListRoute);
        },child: const Text("GO TO POST"),),
      ),
    );
  }
}

// 1 to 2 hour video english
// read motivational story english.
// thinks in english.
