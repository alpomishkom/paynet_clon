import 'package:flutter/material.dart';
import 'package:paynet_clone/utils/app_colors.dart';

class MeningPulim extends StatelessWidget {
  const MeningPulim({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mening pulim',
              style: TextStyle(
                  color: AppColors.textGrey, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                const Text(
                  '132 000 ',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'so\'m',
                  style: TextStyle(
                    color: AppColors.gerys,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Icon(
          Icons.remove_red_eye,
          color: AppColors.gerys,
        ),
      ],
    );
  }
}
