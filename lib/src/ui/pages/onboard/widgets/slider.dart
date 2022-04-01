import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/data/models/onboard_item.dart';
import 'package:flutter_intermedio_app/src/utils/fonts_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../onboard_controller.dart';

class OnboardSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<OnboardController>(context, listen: false);
    return Expanded(
        child: PageView(
          controller: controller.pageController,
      children: List.generate(
        controller.items.length,
        (index) {
          final OnboardItem item = controller.items[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: SvgPicture.asset(item.image),
                ),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: FontSyles.title,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  item.description,
                  textAlign: TextAlign.center,
                  //style: FontSyles.normal,
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
