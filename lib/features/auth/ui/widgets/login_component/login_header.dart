import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/text_styles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              'assets/images/Frame 645.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned(
              top: 140,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/Rectangle 1136.png'),
              ),
            )
          ],
        ),
        const Gap(60),
        Text(
          'Log in to your account',
          style: Styles.textStyle24(context).copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
