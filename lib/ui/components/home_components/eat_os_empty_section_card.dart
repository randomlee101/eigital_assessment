import 'package:eatos/ui/components/custom_inputs/eat_os_button.dart';
import 'package:flutter/material.dart';

class EatOsEmptySectionCard extends StatelessWidget {
  const EatOsEmptySectionCard(
      {super.key, required this.icon, required this.text, this.button_text});

  final IconData icon;
  final String text;
  final String? button_text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(icon, size: 32,),
          ),
          const VerticalDivider(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(text),
                ),
                if (button_text != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: EatOsButton(
                      label: button_text,
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
