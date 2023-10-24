import "package:flutter/material.dart";

// void main() {
//   runApp(MyApp());
// }
// OR
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  void answerQ() {
    setState(() {
      index = index + 1;
    });
    print('answer chosen');
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      "what's your favorite color?",
      "what's your favorite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("my first app")),
        body: Column(children: <Widget>[
          Text(
            questions[index],
          ),
          ElevatedButton(onPressed: answerQ, child: Text('click here')),
          ElevatedButton(onPressed: answerQ, child: Text('click here')),
          ElevatedButton(onPressed: answerQ, child: Text('click here')),
        ]),
      ),
    );
  }
}


// 22. using private props