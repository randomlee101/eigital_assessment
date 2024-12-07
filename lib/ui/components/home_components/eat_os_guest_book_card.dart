import 'package:flutter/material.dart';

class EatOsGuestBookCard extends StatelessWidget {
  const EatOsGuestBookCard(
      {super.key,
      this.profile_picture,
      this.name,
      this.email,
      this.phone_number});

  final String? profile_picture;
  final String? name;
  final String? email;
  final String? phone_number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 24,),
        const SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("$name", style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22
            ),),
            Text("$email", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
            Text("$phone_number", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
          ],
        )
      ],
    );
  }
}
