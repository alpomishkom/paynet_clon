import 'package:flutter/material.dart';

class AppBarC extends StatelessWidget {
  const AppBarC({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 17,
          backgroundColor: Colors.green,
        ),
        const SizedBox(width: 10),
        const Text(
          '+998 90 123 45 67',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.arrow_forward_ios,
          size: 13,
          grade: 90,
          weight: 40,
          color: Color(
            0xff919191,
          ),
        ),
        const Spacer(),
        Image.asset(
          'assets/headphones.png',
          width: 27,
        ),
        const SizedBox(width: 17),
        Image.asset(
          'assets/notification_aler.png',
          width: 27,
        )
      ],
    );
  }
}
