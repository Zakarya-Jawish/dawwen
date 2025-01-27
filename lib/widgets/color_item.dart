import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.color = Colors.blue, required this.active});
  final Color color;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        radius: 19,
        backgroundColor: color,
        child: active ? const Icon(Icons.check, color: Colors.white) : null,
      ),
    );
  }
}
