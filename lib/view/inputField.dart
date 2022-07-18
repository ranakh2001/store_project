import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  final TextStyle style;
  final TextInputType keybordType;
  final TextEditingController controller;

  const InputField({
    Key? key,
    required this.title,
    required this.style,
    required this.keybordType, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        child: TextField(
          controller: controller,
          cursorRadius: const Radius.circular(10.0),
          decoration: InputDecoration(
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
