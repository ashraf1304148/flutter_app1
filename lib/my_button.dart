import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String topic;
  final Function callBackFunction;

  const MyButton(
      {required this.topic, required this.callBackFunction, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction(topic);
      },
      child: Container(
        height: 60,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blueAccent, borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text(topic)),
      ),
    );
  }
}
