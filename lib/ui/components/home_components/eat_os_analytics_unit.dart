import 'package:flutter/material.dart';

class EatOsAnalyticsUnit extends StatelessWidget {
  const EatOsAnalyticsUnit({super.key, this.text, this.metric});

  final String? text;
  final String? metric;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text ?? "data",
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        Text(
          metric ?? "data",
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        )
      ],
    );
  }
}
