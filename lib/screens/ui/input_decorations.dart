import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(),
      focusedBorder: const UnderlineInputBorder(),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Colors.deepPurple,
            )
          : null,
    );
  }
}
