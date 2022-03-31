import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/global_widgets/custom_form.dart';
import 'package:flutter_intermedio_app/src/global_widgets/input_text.dart';
import 'package:flutter_intermedio_app/src/global_widgets/rounded_button.dart';
import 'package:flutter_intermedio_app/src/pages/register/register_controller.dart';
import 'package:provider/provider.dart';

import '../../../data/models/user.dart';
import '../../../routes/routes.dart';
import '../../../utils/dialogs.dart';

class RegisterFrom extends StatelessWidget {
  RegisterFrom({Key? key}) : super(key: key);

  void _submit(BuildContext context) async {
    final controller = context.read<RegisterController>();
    final isFormOK = controller.formKey.currentState!.validate();
    if (isFormOK) {
      ProgressDialog.show(context);
      final isOK = await controller.submit();
      Navigator.pop(context);
      if (!isOK) {
        showDialog(
          context: context,
          builder: (_) => const AlertDialog(
            title: Text("ERROR"),
            content: Text("Register failed"),
          ),
        );
      } else {
        showDialog(
          context: context,
          builder: (_) => WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: const Text("GOOD"),
              content: const Text("Register Ok"),
              actions: [
                FlatButton(
                    onPressed: () => Navigator.popUntil(context,
                        (route) => route.settings.name == Routes.LOGIN),
                    child: const Text("OK"))
              ],
            ),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text("ERROR"),
          content: Text("Invalid Inputs"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<RegisterController>();
    return CustomForm(
      key: controller.formKey,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 320),
        child: Column(
          children: [
            InputText(
              labelText: "Name",
              valiator: (text) {
                return text.trim().length > 1 ? "" : "Invalid name";
              },
              prefixIcon: const Icon(Icons.person_outline),
              onChanged: controller.onNameChanged,
            ),
            const SizedBox(height: 15),
            InputText(
              labelText: "Last Name",
              valiator: (text) {
                return text.trim().length > 1 ? "" : "Invalid last name";
              },
              prefixIcon: const Icon(Icons.person_add_outlined),
              onChanged: controller.onLastnameChanged,
            ),
            const SizedBox(height: 15),
            InputText(
              labelText: "Email",
              keyboardType: TextInputType.emailAddress,
              valiator: (text) {
                return text.contains("@") ? "" : "Invalid email";
              },
              prefixIcon: const Icon(Icons.email_outlined),
              onChanged: controller.onEmailChanged,
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.centerRight,
              child: RoundedButton(
                label: "Sing Up",
                fullWidth: false,
                onPressed: () {
                  _submit(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
