import 'package:flutter/material.dart';

const TextStyle _textStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontStyle: FontStyle.italic,
);

class MaterialYou extends StatefulWidget {
  const MaterialYou({Key? key}) : super(key: key);

  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Text(
      'eco',
      style: _textStyle,
    ),
    Text(
      'home',
      style: _textStyle,
    ),
    Text(
      'person',
      style: _textStyle,
    ),
    Text(
      'video',
      style: _textStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shadowColor: Colors.white,
          title: const Text("Flutter Mapp"),
        ),
        body: Center(
          child: pages[_currentIndex],
        ),
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.white.withOpacity(0.1),
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          child: NavigationBar(
            backgroundColor: Colors.black,
            animationDuration: const Duration(seconds: 1),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            height: 70,
            selectedIndex: _currentIndex,
            onDestinationSelected: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.eco,
                  color: Colors.blueAccent,
                ),
                icon: Icon(
                  Icons.eco_outlined,
                  color: Colors.blue,
                ),
                label: 'eco',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                ),
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.blue,
                ),
                label: 'home',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.person,
                  color: Colors.blueAccent,
                ),
                icon: Icon(
                  Icons.person_outlined,
                  color: Colors.blue,
                ),
                label: 'person',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.video_camera_back,
                  color: Colors.blueAccent,
                ),
                icon: Icon(
                  Icons.video_camera_back_outlined,
                  color: Colors.blue,
                ),
                label: 'video',
              ),
            ],
          ),
        ));
  }
}
