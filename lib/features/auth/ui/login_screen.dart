import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widgets/login_component/form_buttons.dart';
import 'widgets/login_component/login_form.dart';
import 'widgets/login_component/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          LoginHeader(),
          Gap(22),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                LoginForm(),
                Gap(22),
                FormButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
