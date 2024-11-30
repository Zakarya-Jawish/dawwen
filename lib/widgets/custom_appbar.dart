import 'package:flutter/material.dart';
import 'package:dawwen_app/extensions/context_ex.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Notes',
        style: context.textTheme.displayLarge,
      ),
      actions: [
        IconButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(Colors.white.withOpacity(.1)),
          ),
          icon: const Icon(
            Icons.search,
            size: 35,
          ),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
