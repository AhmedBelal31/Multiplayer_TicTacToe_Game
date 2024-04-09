import 'package:flutter/material.dart';

import '../../core/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  final TextEditingController controller;

  const CustomTextField(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blue,
          blurRadius: 5,
          spreadRadius: 2,
        )
      ]),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            fillColor: bgcolor, filled: true, hintText: hintText),
      ),
    );
  }
}
