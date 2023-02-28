import 'package:flutter/material.dart';
import './buttons.dart';
import './button2.dart';
import './button3.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Calc',
      // theme: ThemeData(useMaterial3: true),
      home: new MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff22252D),
      appBar: AppBar(
        backgroundColor: Color(0xff292D36),
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(color: Color(0xffFFFFFF)),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(3),
          ),
        ),
      ),
      // backgroundColor: Color(0x414042),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 15, bottom: 5),
            child: SizedBox(
              height: 150,
              width: 400,
              child: Card(
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(18),
                // ),
                color: Color.fromARGB(255, 56, 57, 60),
                elevation: 10,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            padding: EdgeInsets.all(5),
            alignment: Alignment.topRight,
            child: TextButton(
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 220, 66, 66),
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            color: Color(0xff292D36),
            padding: EdgeInsets.only(bottom: 19),
            child: Column(children: [
              Container(
                child: Row(
                  children: [
                    Buttons('7'),
                    Buttons('8'),
                    Buttons('9'),
                    Button3('/'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Buttons('4'),
                    Buttons('5'),
                    Buttons('6'),
                    Button3('x'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Buttons('1'),
                    Buttons('2'),
                    Buttons('3'),
                    Button3('-'),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Buttons('0'),
                    Buttons('.'),
                    Button2('='),
                    Button3('+'),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
