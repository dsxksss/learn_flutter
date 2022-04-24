//带有ignore字样的注释，它们的作用一般都是用来过滤编译器的一些报警信息
//下面的ignore_for_file: deprecated_member_use表示过滤编译器的一些检查警告
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';

//这里这个组件是用来表示有状态的内容
//其功能就是检测其他组件里是否修改了功能
//如果修改了功能的话就返回一个新的组件给root
class MyApp extends StatefulWidget {
  //这里的功能类似于react里的组件key，应该是用来区分每个不同的组件的
  const MyApp({Key? key}) : super(key: key);

//先创建一个修改状态的功能
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//类名或者变量前面带有_号的意思是表示这个内容可以被外界访问
//类似其他语言里 public 关键字
class _MyAppState extends State<MyApp> {
  //表示第几个问题的下标索引
  var _questionIndex = 0;

  //测试按钮功能
  void answerQuestion() {
    //ignore: avoid_print
    print("Answer 1");
  }

  //数组，或者列表
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your favorite foot?",
  ];
//自己随便写了点改变组件状态内容的功能
//按下changeQuestion按钮之后修改的文字的功能
  void changeQuestion() {
    if (_questionIndex <= 1) {
      //类似class类方法写的react内容
      //如果只修改值内容的话，是不能实时改变页面的
      //必须利用setState函数来修改内容
      setState(() {
        _questionIndex += 1;
      });
    } else {
      setState(() {
        _questionIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "App demo",
        //theme 设置主题色
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        //home 里放置的是这个页面里的"全部"内容
        home: Scaffold(
          appBar: AppBar(
            //顶部栏组件
            title: const Text("My First App"),
          ),
          //body里放置的是这个页面里的主体内容
          body: Column(children: [
            //这里的 Question是另一个文件question.dart的自定义组件
            Question(questions[_questionIndex]),
            //按钮
            RaisedButton(
              //RaisedButton是一种弃用的方法，后续会使用更好的按钮创建方法
              //child 一般用来增加显示内容
              child: const Text("Answer 1"),
              //onPressed 按下按钮后要进行的操作
              //这里需要一个启动函数或者匿名函数(匿名函数一般用来运行带参数的函数使用)
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: const Text("Answer 2"),
              //可以使用JavaScript的箭头运算符
              //下面的ignore: avoid_print表示过滤编译器的一些检查警告
              // ignore: avoid_print
              onPressed: () => print("Answer 2"),
            ),
            RaisedButton(
              child: const Text("Answer 3"),
              onPressed: () {
                //ignore: avoid_print
                print("Answer 3");
              }, //这是第三种匿名函数的使用方法
            ),
            RaisedButton(
              child: const Text("changeQuestion"),
              onPressed: changeQuestion,
            )
          ]),
        ),
      );
}
