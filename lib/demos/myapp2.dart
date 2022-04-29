import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "第二章基础内容:input相关",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("input demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //页面切换的路由设置
            Navigator.of(context).push(
              //页面路由设置
              MaterialPageRoute(
                builder: (BuildContext context) {
                  //重渲染另一个页面元素
                  return const SecondPage();
                },
              ),
            );
          },
          child: const Text("Press"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage title"),
      ),
    );
  }
}
