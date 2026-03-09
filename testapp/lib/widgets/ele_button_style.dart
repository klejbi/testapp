import 'package:flutter/material.dart';

class EleButtonStyle extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;

  const EleButtonStyle({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: Text(label),
    );
  }
}
