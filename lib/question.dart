import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, //infinity是内置变量，表示尽可能占慢屏幕
        margin: const EdgeInsets.all(40), //用来设置外边距
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 28), //设置样式，增加了字体大小
          textAlign: TextAlign.center, //设置文字对齐方式，注意需要够用的空间
        ));
  }
}
