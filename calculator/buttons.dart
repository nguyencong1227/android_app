import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String textButton;

  Buttons(this.textButton);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(textButton),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 255, 201, 136),
          onPrimary: Color(0xFFFEFCF3),
        ),
        onPressed: () {});
  }
}
