import 'package:flutter/material.dart';

class TextStyl extends StatelessWidget {
  final String textButton;
  final VoidCallback buttonPressed;

  TextStyl(this.textButton, this.buttonPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18, top: 16, bottom: 10, left: 20),
    );
  }
}
