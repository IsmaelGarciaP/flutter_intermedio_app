import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/ui/pages/home/witgets/home_bottom_bar.dart';

class HomePage extends StatelessWidget{
  const HomePage ({Key? key }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}