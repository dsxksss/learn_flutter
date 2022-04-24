import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "demo 2",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demo2"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.black12,
      ),
      body: const Homebody(),
    );
  }
}

class Homebody extends StatelessWidget {
  const Homebody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Container(
          height: 100,
        ));
  }
}
