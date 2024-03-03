import 'package:authmobileapp/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/widgets/custom_text_form.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextForm(
          label: 'UserName',
        ),
        const Gap(22),
        const CustomTextForm(
          label: 'Password',
          obscureText: true,
        ),
        const Gap(22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: const BorderSide(
                  color: Color(0xff808194),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: false,
                onChanged: (value) {},
              ),
              Text(
                'Remember me',
                style: Styles.textStyle17(context).copyWith(
                  fontWeight: FontWeight.w700,
                ),
              )
            ]),
            Text(
              'Forgot password?',
              style: Styles.textStyle17(context).copyWith(
                fontWeight: FontWeight.w700,
                decorationStyle: TextDecorationStyle.solid,
                decoration: TextDecoration.underline,
                decorationColor: const Color(0xff007bff),
                decorationThickness: 1.8,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
