import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.black12,
          title: const Text("demo 1"),
        ),
        body: const Homebody());
  }
}

class Homebody extends StatelessWidget {
  const Homebody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.blueGrey,
            height: 400,
            width: 300,
            child: const Center(
              child: Text(
                "Hello world!",
                style: TextStyle(fontSize: 50),
              ),
            )));
  }
}
