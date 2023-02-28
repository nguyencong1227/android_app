import 'package:flutter/material.dart';
import './buttons.dart';

void main(List<String> args) {
  runApp(MyApps());
}

class MyApps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApps> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        // theme: ThemeData(useMaterial3: true),
        home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calculator'),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      // backgroundColor: Color(0x414042),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: SizedBox(
              height: 150,
              width: 400,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                color: Color.fromARGB(255, 163, 226, 255),
                elevation: 10,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Buttons('7'),
                Buttons('8'),
                Buttons('9'),
                Buttons('+'),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Buttons('4'),
                Buttons('5'),
                Buttons('6'),
                Buttons('x'),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Buttons('1'),
                Buttons('2'),
                Buttons('3'),
                Buttons('-'),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Buttons('0'),
                Buttons('-'),
                Buttons('='),
                Buttons('+'),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
