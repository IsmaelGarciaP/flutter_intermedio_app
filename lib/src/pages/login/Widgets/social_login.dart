import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../global_widgets/circule_button.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
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
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Text("Don't haven an acount?"),
            CupertinoButton(child: const Text("Sing Up"), onPressed: () {}),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
