import 'package:dawwen_app/extensions/context_ex.dart';
import 'package:dawwen_app/helper/constants.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    bool isDarkMode = theme.brightness == Brightness.dark;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Text(
              'Dawwen!',
              style:
                  context.textTheme.displayLarge!.copyWith(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: isDarkMode,
              onChanged: (bool value) {
                isDarkMode = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
