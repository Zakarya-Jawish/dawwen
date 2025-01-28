import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:dawwen_app/extensions/context_ex.dart';

import 'custom_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, this.title, required this.iconData, required this.onPressed});
  final String? title;
  final IconData iconData;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title!,
        style: context.textTheme.displayLarge!.copyWith(color: kPrimaryColor),
      ),
      actions: [
        CustomIconButton(iconData: iconData, onPressed: onPressed),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
