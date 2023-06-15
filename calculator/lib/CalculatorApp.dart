import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = "0";
  double _num1 = 0.0;
  double _num2 = 0.0;
  String _operand = "";

  void buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      _num1 = 0.0;
      _num2 = 0.0;
      _operand = "";
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
      _num1 = double.parse(_output);
      _operand = buttonText;
      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      _num2 = double.parse(_output);
      if (_operand == "+") {
        _output = (_num1 + _num2).toString();
      }
      if (_operand == "-") {
        _output = (_num1 - _num2).toString();
      }
      if (_operand == "*") {
        _output = (_num1 * _num2).toString();
      }
      if (_operand == "/") {
        _output = (_num1 / _num2).toString();
      }
      _num1 = 0.0;
      _num2 = 0.0;
      _operand = "";
    } else {
      _output = _output + buttonText;
    }

    setState(() {
      _output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 12.0,
            ),
            child: Text(
              _output,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  buildButton("7", 1, Colors.grey),
                  buildButton("8", 1, Colors.grey),
                  buildButton("9", 1, Colors.grey),
                  buildButton("/", 1, Colors.orange),
                ],
              ),
              Row(
                children: <Widget>[
                  buildButton("4", 1, Colors.grey),
                  buildButton("5", 1, Colors.grey),
                  buildButton("6", 1, Colors.grey),
                  buildButton("*", 1, Colors.orange),
                ],
              ),
              Row(
               children: <Widget>[
                  buildButton("1", 1, Colors.grey),
                  buildButton("2", 1, Colors.grey),
                  buildButton("3", 1, Colors.grey),
                  buildButton("+", 1, Colors.orange),
                ],
              ),
              Row(
               children: <Widget>[
                  buildButton("0", 1, Colors.grey),
                  buildButton(".", 1, Colors.grey),
                  buildButton("-", 1, Colors.orange),
                  buildButton("=", 1, Colors.orange),
                ],
              ),
              Row(
                children: <Widget[
                  buildButton('CLEAR', Colors.orange),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
