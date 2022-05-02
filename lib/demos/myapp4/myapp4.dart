import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    const SizedBox(
        child: Text(
      "Red",
      style: TextStyle(color: Colors.red, fontSize: 40),
    )),
    const SizedBox(
        child: Text(
      "Green",
      style: TextStyle(color: Colors.green, fontSize: 40),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("demo4"),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(child: pages[selectedIndex]),
        ),
        drawer: Builder(builder: (context) {
          return Drawer(
              child: ListView(
            children: [
              const DrawerHeader(child: Text("Big Header")),
              ListTile(
                title: const Text("Red"),
                onTap: () => {
                  setState(() {
                    selectedIndex = 0;
                  }),
                  Navigator.pop(context)
                },
              ),
              ListTile(
                title: const Text("Green"),
                onTap: () => {
                  setState(() {
                    selectedIndex = 1;
                  }),
                  Navigator.pop(context)
                },
              ),
            ],
          ));
        }),
      ),
    );
  }
}
