import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/screens/home_screen.dart';

import 'package:theme_app/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomeScreen(),
    );
  }
}

/*



void main() {
  runApp(
    Builder(builder: (context) {
      return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: MaterialApp(
          theme: Provider.of<ThemeProvider>(context).themeData,
          home: ChangeNotifierProvider(
            create: (context) => ThemeProvider(),
            child: const HomeScreen(),
          ),
        ),
      );
    }),
  );

void main() {
  runApp(
    Builder(
      builder: (context) {
        return MaterialApp(
          theme: Provider.of<ThemeProvider>(context).themeData,
          home: ChangeNotifierProvider(
            create: (context) => ThemeProvider(),
            child: const HomeScreen(),
          ),
        );
      },
    ),
  );
}

*/