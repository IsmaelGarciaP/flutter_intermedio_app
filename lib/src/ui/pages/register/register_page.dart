import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/ui/pages/register/register_controller.dart';
import 'package:flutter_intermedio_app/src/utils/fonts_styles.dart';
import 'package:provider/provider.dart';

import 'Widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterController>(
        create: (_) => RegisterController(),
        builder: (_, __) {
          final MediaQueryData data = MediaQuery.of(_);
          final padding = data.padding;
          final Size size = data.size;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
            ),
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: size.height - padding.top - padding.bottom,
                    ),
                    color: Colors.transparent,
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
        });
  }
}
