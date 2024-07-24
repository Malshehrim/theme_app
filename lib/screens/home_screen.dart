import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/components/box.dart';
import 'package:theme_app/components/button.dart';
import 'package:theme_app/theme/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: MyButton(
            // the small recrangle with the Text
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              // you must to make listen false to prevent the widget
              // rebuild when the provider changes and returen to light mode.
              Provider.of<ThemeProvider>(context, listen: false).toggledTheme();
            },
          ),
        ),
      ),
    );
  }
}
