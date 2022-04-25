//带有ignore字样的注释，它们的作用一般都是用来过滤编译器的一些报警信息
//下面的ignore_for_file: deprecated_member_use表示过滤编译器的一些检查警告
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fluttercn_new/answer.dart';
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
    {
      "questionText": "What's your favorite color?",
      "answers": ["Red", "Green", "Black", "White"],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Rabbit", "Snake", "Elphant", "Lion"],
    },
    {
      "questionText": "What's your favorite food?",
      "answers": ["noodle", "FriedChicken", "Dumplings", "Chocolates"],
    },
  ];
//自己随便写了点改变组件状态内容的功能
//按下changeQuestion按钮之后修改的文字的功能
  void changeQuestion() {
    if (_questionIndex <= questions.length - 2) {
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

  void choiceQuestion() {
    //TODO:选择答案的功能，按下按钮后会记录已经按下的答案，并且进入到下一个问题
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
            Question(questions[_questionIndex]["questionText"].toString()),
            //这里利用了列表自动生成了四个答案button,类似reactMap方法
            //...号是展开运算符，类似于JavaScript里的...展开语法,
            //因为map返回的不是一个Widget类型,所以要展开再返回展开后获得的单个的值
            //as List<String>是表示自己是一个包含了String类型的list，这么做的意义是让map明白
            //因为这里面的map不确定你给它的列表是什么类型的列表，所以要主动告诉它类型
            ...(questions[_questionIndex]["answers"] as List<String>)
                //这里的question是这个列表里的每个值
                .map((question) => Answer(
                      //然后返回一个自定的Answer组件
                      // ignore: avoid_print
                      selectHandler: () => print("push Answer $question"),
                      text: question,
                    ))
                .toList(),
            //按钮
            Answer(
              selectHandler: changeQuestion,
              color: Colors.greenAccent,
              textcolor: Colors.white,
              textsize: 20,
              text: "ChangeAnswer",
            ),
          ]),
        ),
      );
}
