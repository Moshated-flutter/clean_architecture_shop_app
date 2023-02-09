import 'package:flutter/material.dart';

class CustomSnackBar {
  static showSnackbar(context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }
}
