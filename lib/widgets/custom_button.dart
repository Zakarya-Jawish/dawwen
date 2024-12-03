import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.function,
    required this.text,
    this.color = Colors.white,
  });
  final String text;
  final Color color;
  final Function() function;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)))),
          onPressed: function,
          child: Text(
            text,
            style: context.textTheme.bodyMedium,
          )),
    );
  }
}
