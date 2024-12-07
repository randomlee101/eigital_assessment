import 'package:flutter/material.dart';

class EatOsButton extends StatelessWidget {
  const EatOsButton({super.key, this.function, this.label});

  final VoidCallback? function;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      excludeFromSemantics: false,
      onTap: () => print("button"),
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(16)),
          child: Text(
            "$label",
            style: const TextStyle(color: Colors.white),
          )),
    );
  }
}
