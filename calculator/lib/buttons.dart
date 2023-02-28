import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String textButton;
  // final VoidCallback buttonColor;

  Buttons(this.textButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18, top: 16, bottom: 16, left: 20),
      child: ElevatedButton(
          child: Text(textButton),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(28),
            primary: Color.fromARGB(255, 75, 135, 213),
            onPrimary: Color(0xFFFEFCF3),
          ),
          onPressed: () {}),
    );
  }
}
