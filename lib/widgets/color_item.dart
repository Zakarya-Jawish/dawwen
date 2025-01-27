import 'package:dawwen_app/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.color = Colors.blue});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: CircleAvatar(
        radius: 19,
        backgroundColor: color,
        child: BlocProvider.of<AddNoteCubit>(context).selectedColor == color
            ? const Icon(Icons.check, color: Colors.white)
            : null,
      ),
    );
  }
}
