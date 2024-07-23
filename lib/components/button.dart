import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function() onTap;
  final Color color;
  const MyButton({
    super.key,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadiusDirectional.circular(8),
          ),
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(50),
          child: const Center(child: Text('TAP ')),
        ));
  }
}
