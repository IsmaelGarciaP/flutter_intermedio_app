import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter/widgets.dart';
import 'package:flutter_intermedio_app/src/data/models/onboard_item.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnboardController extends ChangeNotifier {
  final List<OnboardItem> items = [
    OnboardItem(
      image: "assets/pages/onboard/slider1.svg",
      title: "Lorem ipsum dolor sit amet",
      description:
          "Consectetur adipiscing elit. Aenean velit massa, fringilla sit amet blandit non, tristique at purus. Aenean dictum ex ac erat sagittis, eu sagittis quam porttitor. Vivamus quis semper enim.",
    ),
    OnboardItem(
      image: "assets/pages/onboard/slider2.svg",
      title: "Morbi interdum ligula at nisi ultrices congue",
      description:
          "Usce a nibh eu magna dapibus volutpat. In consequat magna sed tortor cursus convallis eu congue mauris. Maecenas gravida enim odio, non placerat mauris maximus non. Integer iaculis condimentum tellus, a pulvinar est. ",
    ),
    OnboardItem(
      image: "assets/pages/onboard/slider3.svg",
      title: "Proin fermentum mauris dui",
      description:
          "Suspendisse eget vulputate nunc. In in sem ac ex malesuada convallis. Integer tristique tincidunt imperdiet. Vivamus eleifend nibh at arcu dictum viverra. Donec dignissim enim in turpis tempus, et commodo arcu congue.",
    ),
  ];

  final PageController pageController = PageController();
  double _currentPage = 0;
  double get currentPage => _currentPage;

  void afterfirstlayout() {
    pageController.addListener(() {
      final double? page = pageController.page;
      _currentPage = page!;
      notifyListeners();
      /*if (page! % 1 == 0 && _currentPage != page) {
        _currentPage = page.toInt();

        print("curret page${pageController.page}");
      }*/
    });
  }

  @override
  void dispose(){
    pageController.dispose();
    super.dispose();
  }
}
