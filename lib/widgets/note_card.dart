import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.23,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 5),
              child: Text(
                'My account on git hub',
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.displayMedium!
                    .copyWith(color: Colors.black),
                maxLines: 1,
              ),
            ),
            subtitle: Text(
              'subtitle on this card and note my email and pass is subtitle on this card and note my email and pass is',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style:
                  context.textTheme.bodyMedium!.copyWith(color: Colors.black),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                size: 30,
                color: kPrimaryBlack,
              ),
              onPressed: () {},
            ),
          ),
          const Spacer(),
          Text(
            DateTime.now().toString(),
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
