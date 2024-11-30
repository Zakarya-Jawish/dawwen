import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: kPrimayColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'title of note',
              style: context.textTheme.displayMedium,
            ),
            subtitle: Text(
              'subtitle on this card and note',
              style: context.textTheme.bodyLarge,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                )),
          ),
          const Spacer(),
          Text(DateTime.now().toString()),
        ],
      ),
    );
  }
}
