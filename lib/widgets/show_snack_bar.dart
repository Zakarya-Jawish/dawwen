import 'package:flutter/material.dart';

void showSnak(
    BuildContext context, String message, Color color, IconData icon) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Row(
        children: [
          Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          const Spacer(),
          Icon(
            icon,
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}
