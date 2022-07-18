import 'package:flutter/material.dart';

class TextB extends StatelessWidget {
  final Function() onpress;
  final String text;

 TextB(this.text, this.onpress);
  @override
  Widget build(BuildContext context) => TextButton(
      onPressed: onpress,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.blueAccent,
          decoration: TextDecoration.underline,
        ),
      ));
}
