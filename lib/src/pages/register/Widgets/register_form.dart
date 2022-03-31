import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/global_widgets/input_text.dart';
import 'package:flutter_intermedio_app/src/global_widgets/rounded_button.dart';
import 'package:flutter_intermedio_app/src/pages/register/register_controller.dart';
import 'package:provider/provider.dart';

class RegisterFrom extends StatelessWidget {
  RegisterFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<RegisterController>();
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 320),
      child: Column(
        children: [
          InputText(
            prefixIcon: const Icon(Icons.person_outline),
            onChanged: controller.onNameChanged,
          ),
          const SizedBox(height: 15),
          InputText(
            prefixIcon: const Icon(Icons.person_add_outlined),
            onChanged: controller.onLastnameChanged,
          ),
          const SizedBox(height: 15),
          InputText(
            prefixIcon: const Icon(Icons.email_outlined),
            onChanged: controller.onEmailChanged,
          ),
          const SizedBox(height: 25),
          const Align(
            alignment: Alignment.centerRight,
            child: RoundedButton(
              label: "Sing Up",
              fullWidth: false,
            ),
          ),
        ],
      ),
    );
  }
}
