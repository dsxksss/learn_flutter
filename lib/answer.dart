// ignore_for_file: deprecated_member_use
//一个单独的Button组件
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String text;
  final Color color;
  final Color textcolor;
  final double textsize;
  const Answer(
      {Key? key,
      required this.selectHandler,
      this.text = "BUTTON",
      this.color = Colors.blue,
      this.textcolor = Colors.black,
      this.textsize = 16})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //fromLTRB 设置左、上、右、下的外边距
      //这里是设置了上下外边距为10个像素点
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      width: double.infinity,
      color: color,
      child: FlatButton(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: textcolor,
              fontSize: textsize),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}

/*扩展
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
*/