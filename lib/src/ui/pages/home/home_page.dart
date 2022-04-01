import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/ui/pages/home/home_controller.dart';
import 'package:flutter_intermedio_app/src/ui/pages/home/witgets/home_bottom_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
      create: (_) => HomeController(),
      builder: (_, __) => Scaffold(
        bottomNavigationBar: HomeBottomBar(),
      ),
    );
  }
}
