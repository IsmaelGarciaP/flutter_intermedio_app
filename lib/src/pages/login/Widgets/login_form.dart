import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/pages/login/login_controller.dart';
import 'package:flutter_intermedio_app/src/utils/dialogs.dart';
import 'package:provider/provider.dart';

import '../../../data/models/user.dart';
import '../../../global_widgets/input_text.dart';
import '../../../global_widgets/rounded_button.dart';
import '../../../utils/fonts_styles.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  void _submit(BuildContext context) async {
    final controller = context.read<LoginConrtoller>();
    ProgressDialog.show(context);
    final User? user = await controller.submit();
    Navigator.pop(context);
    if (user == null) {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text("ERROR"),
          content: Text("Invalid email or password"),
        ),
      );
    } else {
      //go to home
    }
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
            keyboardType: TextInputType.emailAddress,
            valiator: (t) {
              return t.contains("@");
            },
            textInputAction: TextInputAction.next,
            onChanged: controller.onEmailChanged,
          ),
          const SizedBox(height: 25),
          InputText(
            prefixIcon: const Icon(Icons.lock_outline),
            obscureText: true,
            onChanged: controller.onPasswordChanged,
            textInputAction: TextInputAction.send,
            onSubmitted: (text) => _submit(context),
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
            onPressed: () => _submit(context),
            label: "Login",
            fullWidth: false,
            padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 50),
          ),
        ],
      ),
    );
  }
}
