import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../global_widgets/input_text.dart';
import '../../../global_widgets/rounded_button.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Column(
        children: [
          const SizedBox(height: 15),
          SvgPicture.asset(
            "assets/pages/forgot_password/forgot.svg",
            width: 250,
          ),
          const SizedBox(height: 25),
          const InputText(
            prefixIcon: Icon(Icons.email_rounded),
            labelText: "Email",
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: RoundedButton(
              label: "Send",
              fullWidth: false,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
