import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/utils/fonts_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../routes/routes.dart';
import '../../global_widgets/circule_button.dart';
import '../../global_widgets/rounded_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SvgPicture.asset(
                    "assets/pages/welcome/welcome1.svg",
                    //width: 200,
                  ),
                ),
              ),
              Text(
                "Welcome",
                style: FontSyles.title,
              ),
              const SizedBox(height: 20),
              const Text(
                "Vivamus ut consectetur nisl.\n Nunc posuere fermentum nulla laoreet volutpat.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 280,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: RoundedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, Routes.LOGIN);
                        },
                        label: "Login",
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: RoundedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.REGISTER);
                        },
                        label: "Sing Up",
                        textColor: Colors.black,
                        backgroundColor: Colors.white,
                        borderColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Or via social media",
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleButton(
                    iconPath: 'assets/pages/welcome/icono_facebook.svg',
                    onPressed: () {},
                    backgroundColor: Colors.blueAccent,
                  ),
                  const SizedBox(width: 10),
                  CircleButton(
                    iconPath: 'assets/pages/welcome/icono_google.svg',
                    onPressed: () {},
                    backgroundColor: Colors.redAccent,
                  ),
                  const SizedBox(width: 10),
                  CircleButton(
                    iconPath: 'assets/pages/welcome/icono_apple.svg',
                    onPressed: () {},
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
