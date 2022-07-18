import 'package:flutter/material.dart';

class PassInput extends StatelessWidget {
  final String title;
  final TextStyle style;
  final TextInputType keybordType;
  final TextEditingController controller;
  var visible;
  final Function() onoff;
  PassInput({Key? key, 
    required this.title,
    required this.style,
    required this.keybordType,
    required this.visible,
    required this.controller, required this.onoff,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        child: TextField(
          controller: controller,
          obscureText: visible,
          cursorRadius: const Radius.circular(10.0),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(visible ? Icons.visibility : Icons.visibility_off),
              onPressed: onoff,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.lightBlue),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            label: Text(
              title,
              style: style,
            ),
          ),
          keyboardType: keybordType,
        ),
      );
}
