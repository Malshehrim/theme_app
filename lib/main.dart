import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/screens/home_screen.dart';
import 'package:theme_app/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainScreen(),
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomeScreen(),
    );
  }
}
