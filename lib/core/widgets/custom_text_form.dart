import 'package:authmobileapp/core/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.label,
     this.obscureText =false,
  });

  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Styles.textStyle17(context).copyWith(
            color: const Color(0xff808194),
          ),
        ),
        const Gap(5),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff808194)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CupertinoTextFormFieldRow(
            padding: const EdgeInsets.symmetric(vertical: 5),
            style: const TextStyle(
              color: Color(0xff2A2B2E),
            ),
            obscureText:obscureText ,
          ),
        ),
      ],
    );
  }
}
