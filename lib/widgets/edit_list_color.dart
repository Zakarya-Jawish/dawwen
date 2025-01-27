import 'package:dawwen_app/widgets/color_item.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';
import '../models/note_model.dart';

class EditListViewColor extends StatefulWidget {
  const EditListViewColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditListViewColor> createState() => _EditListViewColorState();
}

class _EditListViewColorState extends State<EditListViewColor> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38,
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              active: widget.note.color == kColors[index].value,
            ),
          ),
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
        ));
  }
}
