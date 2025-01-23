import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';
import '../models/note_model.dart';
import '../views/note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () {
        Navigator.pushNamed(context, NoteView.id);
      },
      child: Container(
        height: context.height * 0.23,
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 5),
                child: Text(
                  note.title,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.displayMedium!
                      .copyWith(color: Colors.black),
                  maxLines: 1,
                ),
              ),
              subtitle: Text(
                note.body,
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
                onPressed: () async {
                  await note.delete();
                },
              ),
            ),
            const Spacer(),
            Text(
              note.date,
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
