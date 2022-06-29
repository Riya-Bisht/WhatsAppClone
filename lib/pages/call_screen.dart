import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        "Calls",
        style: new TextStyle(fontSize: 20.0),
      ),
    );
  }
}
