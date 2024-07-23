import 'package:flutter/material.dart';
import 'package:theme_app/components/box.dart';
import 'package:theme_app/components/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: MyBox(
          color: const Color.fromARGB(255, 191, 152, 152),
          child: MyButton(
            color: Colors.black,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
