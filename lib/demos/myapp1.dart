import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("App Title"),
          ),
          body: const Body(),
          bottomNavigationBar: const ButtonNavigationBar(),
        ),
      ));
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String buttonName = "abc";

  void changeButton() => setState(() {
        buttonName = "xawdaw";
      });

  @override
  Widget build(BuildContext context) => (Center(
          child: Column(
        //这个属性控制垂直排列的方式
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: changeButton,
            child: Text(buttonName),
          ),
          ElevatedButton(
            onPressed: changeButton,
            child: Text(buttonName),
          ),
        ],
      )));
}

class ButtonNavigationBar extends StatefulWidget {
  const ButtonNavigationBar({Key? key}) : super(key: key);

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
