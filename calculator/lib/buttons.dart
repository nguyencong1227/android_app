import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String textButton;
  // final VoidCallback buttonPressed;

  Buttons(this.textButton);
  // Buttons(this.textButton, this.buttonPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18, top: 16, bottom: 10, left: 20),
      child: ElevatedButton(
          child: Text(
            textButton,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.all(23),
            primary: Color.fromARGB(255, 33, 36, 42),
            onPrimary: Color(0xFFFEFCF3),
          ),
          onPressed: () {}),
    );
  }
}
