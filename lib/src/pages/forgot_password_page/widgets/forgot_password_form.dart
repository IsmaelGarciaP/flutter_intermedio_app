import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/pages/forgot_password_page/widgets/forgot_password_controller.dart';
import 'package:flutter_intermedio_app/src/utils/dialogs.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../global_widgets/input_text.dart';
import '../../../global_widgets/rounded_button.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  void _submit(BuildContext context) async {
    final controller = context.read<ForgotPasswordController>();
    ProgressDialog.show(context);
    final sent = await controller.submit();
    Navigator.pop(context);
    if (sent!) {
      await Dialogs.alert(
        context,
        titele: "GOOD",
        dissmisible: false,
        description: "We have sent an email ${controller.getEmail}",
      );
      Navigator.pop(context);
    } else {
      Dialogs.alert(
        context,
        titele: "Error",
        description: "Email ${controller.getEmail} not found",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ForgotPasswordController>();
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
          InputText(
            prefixIcon: const Icon(Icons.email_rounded),
            labelText: "Email",
            onChanged: controller.onEmailChanged,
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: RoundedButton(
              label: "Send",
              fullWidth: false,
              onPressed: () => _submit(context),
            ),
          ),
        ],
      ),
    );
  }
}
