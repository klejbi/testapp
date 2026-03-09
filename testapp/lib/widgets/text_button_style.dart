import 'package:flutter/material.dart';

class TextButtonStyle extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  const TextButtonStyle({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: color ?? Color.fromARGB(255, 243, 33, 145),
      ),
      child: Text(label),
    );
  }
}
