import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditasi_app/constants.dart';

class BottomNavbars extends StatelessWidget {
  const BottomNavbars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            strTitle: 'Today',
            svgSrc: 'assets/icons/calendar.svg',
            pressCb: () {
              print('Tap menu bottom 1');
            },
            isActive: true,
          ),
          BottomNavItem(
            strTitle: 'All Excercises',
            svgSrc: 'assets/icons/gym.svg',
            pressCb: () {
              print('Tap menu bottom 2');
            },
            isActive: false,
          ),
          BottomNavItem(
            strTitle: 'Settings',
            svgSrc: 'assets/icons/settings.svg',
            pressCb: () {
              print('Tap menu bottom 3');
            },
            isActive: false,
          )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.strTitle,
    required this.pressCb,
    this.isActive = false,
  }) : super(key: key);

  final String svgSrc;
  final String strTitle;
  final Function pressCb;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pressCb();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc,
            fit: BoxFit.cover,
            height: 20,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            strTitle,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
