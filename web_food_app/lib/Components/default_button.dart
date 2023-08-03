import 'package:flutter/material.dart';

// ignore: unused_import
import '../constant.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  final String text;
  VoidCallback press;
  DefaultButton({
    key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFFC200),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        ),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
