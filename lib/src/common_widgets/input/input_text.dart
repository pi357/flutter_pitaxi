import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final bool obscureText;

  const InputText({
    Key? key,
    required this.controller,
    this.hint,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.bold,
            ),
            hintText: hint,
          ),
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          height: 3,
          color: Colors.white,
        )
      ],
    );
  }
}
