import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/pages/onboard/onboard_controller.dart';
import 'package:flutter_intermedio_app/src/pages/onboard/widgets/bottom_controls.dart';
import 'package:flutter_intermedio_app/src/pages/onboard/widgets/slider.dart';
import 'package:provider/provider.dart';

class OnboardPage extends StatelessWidget {
  //const OnboardPage({required Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardController>(
      create: (_) {
        final controller = OnboardController();
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          controller.afterfirstlayout();
        });
        return controller;
      },
      builder: (context, __) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                OnboardSlider(),
                const SizedBox(height: 50,),
                const OnboardControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
