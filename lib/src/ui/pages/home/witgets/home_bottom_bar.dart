import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Container(
      child: SafeArea(
        top: false,
        child: Row(
          children: List.generate(
            _items.length,
            (index) {
              final item = _items[index];
              return Expanded(
                child: CupertinoButton(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        item.icon,
                        width: 35,
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
                  onPressed: () {},
                ),
              );
            },
          ),
        ),
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
