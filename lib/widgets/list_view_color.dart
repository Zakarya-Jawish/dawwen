import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'color_item.dart';

class ListViewColor extends StatefulWidget {
  const ListViewColor({super.key});

  @override
  State<ListViewColor> createState() => _ListViewColorState();
}

class _ListViewColorState extends State<ListViewColor> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38,
        child: ListView.builder(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              BlocProvider.of<AddNoteCubit>(context).selectedColor =
                  kColors[index];
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              active: BlocProvider.of<AddNoteCubit>(context).selectedColor ==
                  kColors[index],
            ),
          ),
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
        ));
  }
}
