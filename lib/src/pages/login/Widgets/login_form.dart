import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/pages/login/login_controller.dart';
import 'package:provider/provider.dart';

import '../../../global_widgets/input_text.dart';
import '../../../global_widgets/rounded_button.dart';
import '../../../utils/fonts_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  void _submit(BuildContext context){
    final controller =  context.read<LoginConrtoller>();
    controller.submit();

  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LoginConrtoller>(context, listen: false);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Column(
        children: [
          InputText(
            prefixIcon: const Icon(Icons.email_outlined),
            valiator: (t) {
              return t.contains("@");
            },
            onChanged: controller.onEmailChanged,
          ),
          const SizedBox(height: 25),
          InputText(
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: true,
            valiator: (t) {
              return t.contains("");
            },
            onChanged: controller.onPasswordChanged,
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
          const SizedBox(height: 20),
          RoundedButton(
            onPressed: ()  => _submit(context),
            label: "Login",
            fullWidth: false,
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 50),
          ),
        ],
      ),
    );
  }
}
