import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/ui/pages/forgot_password_page/widgets/forgot_password_controller.dart';
import 'package:flutter_intermedio_app/src/ui/pages/forgot_password_page/widgets/forgot_password_form.dart';

import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../utils/fonts_styles.dart';


class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ForgotPasswordController>(
      create: (_) => ForgotPasswordController(),
      builder: (_, __) {
        final MediaQueryData data = MediaQuery.of(_);
        final padding = data.padding;
        final Size size = data.size;
        final AppBar appBar = AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
        );
        return Scaffold(
          appBar: appBar,
          body: SafeArea(
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  width: double.infinity,
                  height: size.height - padding.top - padding.bottom -appBar.preferredSize.height,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "Forgot password",
                        style: FontSyles.title.copyWith(fontSize: 22),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut blandit cursus dictum.",
                          style: FontSyles.normal.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ForgotPasswordForm(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
