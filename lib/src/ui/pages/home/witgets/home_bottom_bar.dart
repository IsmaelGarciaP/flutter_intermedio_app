import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intermedio_app/src/ui/pages/home/home_controller.dart';
import 'package:flutter_intermedio_app/src/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeBottomBar extends StatelessWidget {
  HomeBottomBar({Key? key}) : super(key: key);

  final List<_BottomBarItem> _items = [
    _BottomBarItem(
      icon: "assets/pages/home/icons/home.svg",
      label: "Home",
    ),
    _BottomBarItem(
      icon: "assets/pages/home/icons/favorite.svg",
      label: "Favorite",
    ),
    _BottomBarItem(
      icon: "assets/pages/home/icons/bell.svg",
      label: "Notification",
    ),
    _BottomBarItem(
      icon: "assets/pages/home/icons/avatar.svg",
      label: "More",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context, listen: false);
    final int currentPage = context.select<HomeController, int>(
      (_) => _.getCurrentPage,
    );
    return Container(
      child: SafeArea(
        top: false,
        child: Row(
          children: List.generate(
            _items.length,
            (index) {
              final item = _items[index];
              return BottomBarItemButton(
                item: item,
                isActive: currentPage == index,
                onPressed: () {
                  controller.setPage(index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class BottomBarItemButton extends StatelessWidget {
  const BottomBarItemButton({
    Key? key,
    required this.item,
    required this.isActive,
    required this.onPressed,
  }) : super(key: key);

  final _BottomBarItem item;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final Color color = isActive ? primaryColor : Colors.black;
    return Expanded(
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              item.icon,
              width: 35,
              color: color,
            ),
            Text(
              item.label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}

class _BottomBarItem {
  final String icon, label;

  _BottomBarItem({
    required this.icon,
    required this.label,
  });
}
