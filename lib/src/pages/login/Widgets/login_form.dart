import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../global_widgets/input_text.dart';
import '../../../utils/fonts_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Column(
        children: [
          InputText(
            prefixIcon: const Icon(Icons.email_outlined),
            valiator: (t) {
              return t.contains("@");
            },
            onChanged: (text) {},
          ),
          const SizedBox(height: 25),
          InputText(
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: true,
            valiator: (t) {
              return t.contains("@");
            },
            onChanged: (text) {},
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CupertinoButton(
              child: Text(
                "Forgot Password",
                style: FontSyles.regular,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
