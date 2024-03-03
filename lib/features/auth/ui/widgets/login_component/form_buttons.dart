import 'package:authmobileapp/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class FormButtons extends StatelessWidget {
  const FormButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff007bff),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Log in',
                  style: Styles.textStyle18(context).copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(0),
          ),
          onPressed: () {},
          child: RichText(
            text: TextSpan(
              style: Styles.textStyle18(context).copyWith(
                color: Colors.black,
              ),
              children: [
                const TextSpan(text: 'Don’t have an account? '),
                TextSpan(
                  text: 'Register',
                  style: Styles.textStyle18(context).copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xff007bff),
                    decorationThickness: 1.8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
