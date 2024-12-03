import 'package:flutter/material.dart';
import 'package:dawwen_app/extensions/context_ex.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title!,
        style: context.textTheme.displayLarge,
      ),
      actions: [
        // SizedBox()
        Container(
            margin: const EdgeInsets.only(right: 15),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            child: IconButton(
              icon: const Icon(
                Icons.search,
                size: 35,
              ),
              onPressed: () {},
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
