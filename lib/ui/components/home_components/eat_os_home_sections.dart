import 'package:flutter/material.dart';

class EatOsHomeSections extends StatelessWidget {
  const EatOsHomeSections({super.key, required this.section_title, this.section_widget});

  final String section_title;
  final Widget? section_widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(section_title),
        const SizedBox(height: 16,),
        section_widget ?? const SizedBox.shrink(),
        const SizedBox(height: 24,)
      ],
    );
  }
}
