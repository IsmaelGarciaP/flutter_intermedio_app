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
      builder: (_, __) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "logo",
              style: TextStyle(
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Colors.redAccent,
              indicatorWeight: 3,
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.black38,
              indicator: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.redAccent),
              ),
              tabs: const [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
          ),
          //bottomNavigationBar: HomeBottomBar(),
          body: TabBarView(
            children: [
              Container(
                child: const Text("home"),
                alignment: Alignment.center,
              ),
              Container(
                child: const Text("favorites"),
                alignment: Alignment.center,
              ),
              Container(
                child: const Text("notifications"),
                alignment: Alignment.center,
              ),
              Container(
                child: const Text("more"),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
