import 'package:flutter/material.dart';

class EatOsSearchField extends StatelessWidget {
  const EatOsSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextFormField()),
      ],
    );
  }
}
