import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic = "package";
  void callBack(String text) {
    topic = text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(child: Text("We are learning flutter $topic")),
            ),
          ),
          MyButton(topic: "History", callBackFunction: callBack),
          MyButton(topic: "Bloc", callBackFunction: callBack),
          MyButton(topic: "Widget", callBackFunction: callBack),
        ]),
      ),
    );
  }
}
