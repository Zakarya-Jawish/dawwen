import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:dawwen_app/views/edit_note_view.dart';
import 'package:dawwen_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "NoteView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'title here',
          iconData: Icons.edit,
          onPressed: () {
            Navigator.pushNamed(context, EditNoteView.id);
          }),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'data datat data body here body here bodey data body here body here bodey ',
                style: context.textTheme.bodyMedium!
                    .copyWith(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'here rhrer  body here body here bodey here rhrer  body here body here bodey here rhrer  body here body here bodey here rhrer  body here body here bodey here rhrer hherhererherherhhhhhhhhhhhdata body here body here bodey here rhrer hherhererherherhhhhhhhhhhh hherhererherherhhhhhhhhhhhhhhhhhhhh ',
                style: context.textTheme.bodyMedium!.copyWith(fontSize: 23),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
