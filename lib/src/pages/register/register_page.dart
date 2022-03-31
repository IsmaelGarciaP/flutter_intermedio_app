import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/pages/register/Widgets/register_form.dart';
import 'package:flutter_intermedio_app/src/pages/register/register_controller.dart';
import 'package:flutter_intermedio_app/src/utils/fonts_styles.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterController>(
      create: (_) => RegisterController(),
      builder: (_, __) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    "Sing Up",
                    style: FontSyles.title.copyWith(
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Fill the details & create your account",
                    style: FontSyles.normal.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.grey),
                  ),
                  const SizedBox(height: 65),
                  RegisterFrom(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
