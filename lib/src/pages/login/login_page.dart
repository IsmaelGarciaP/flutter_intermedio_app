import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/global_widgets/input_text.dart';
import 'package:flutter_intermedio_app/src/global_widgets/rounded_button.dart';
import 'package:flutter_intermedio_app/src/pages/login/login_controller.dart';
import 'package:flutter_intermedio_app/src/utils/fonts_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../global_widgets/circule_button.dart';
import 'Widgets/login_form.dart';
import 'Widgets/social_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginConrtoller>(
      create: (_) => LoginConrtoller(),
      builder: (_, __) {
        final MediaQueryData data = MediaQuery.of(_);
        final padding = data.padding;
        final Size size = data.size;
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  width: double.infinity,
                  height: size.height - padding.top - padding.bottom,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "Welcom Back!",
                        style: FontSyles.title.copyWith(fontSize: 22),
                      ),
                      SvgPicture.asset(
                        "assets/pages/welcome/welcome1.svg",
                        width: 200,
                      ),
                      LoginForm(),
                      SocialLogin(),
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
