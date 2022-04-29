import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentIndex = 0;
  String buttonName = "abc";

  void changeButton() => setState(() {
        buttonName = "xawdaw";
      });

  @override
  Widget build(BuildContext context) => (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("App Title"),
          ),
          body: Center(
            //Container组件和SizedBox组件特别相像，
            //除了Container组件可以增加color背景属性
            child: currentIndex == 0
                ? Container(
                    //设置屏幕的最大宽占比
                    width: double.infinity,
                    height: double.infinity,
                    color: Colors.blueGrey,
                    child: Row(
                      //这个属性控制垂直排列的方式
                      mainAxisAlignment: MainAxisAlignment.center,
                      //这个属性控制水平排列的方式
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            //文字颜色
                            onPrimary: Colors.white,
                            //按钮背景颜色
                            primary: Colors.red,
                          ),
                          onPressed: changeButton,
                          child: Text(buttonName),
                        ),
                        ElevatedButton(
                          onPressed: changeButton,
                          child: Text(buttonName),
                        ),
                      ],
                    ),
                  )
                : Image.network(
                    "https://images.pexels.com/photos/8965700/pexels-photo-8965700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ));
}
