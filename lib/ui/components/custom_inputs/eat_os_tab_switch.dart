import 'package:flutter/material.dart';

class EatOsTabSwitch extends StatelessWidget {
  const EatOsTabSwitch({super.key, this.items, this.stream, this.onTap});

  final List<String?>? items;
  final Stream<String?>? stream;
  final Function(String?)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2,
      margin: EdgeInsets.symmetric(vertical: 24),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: StreamBuilder<String?>(
          stream: stream,
          builder: (context, snapshot) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...?items?.map<Widget>((e) => Expanded(
                      child: GestureDetector(
                        onTap: onTap == null ? null : () => onTap!(e),
                        child: AnimatedContainer(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                                color:
                                    e == snapshot.data && snapshot.data != null
                                        ? Colors.black12
                                        : null,
                                borderRadius: BorderRadius.circular(4)),
                            duration: const Duration(milliseconds: 200),
                            child: Text(
                              "$e",
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
