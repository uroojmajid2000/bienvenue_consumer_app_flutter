import 'package:bienvenue_consumer_app_flutter/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon, text;
  final int tab, currentTab;
  final bool isDisabled;

  const NavigationButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
    required this.tab,
    required this.currentTab,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    Color color = currentTab == tab ? kPrimaryColor : const Color(0xFF525252);

    return MaterialButton(
        minWidth: 40,
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: color,
              height: 20,
            ),
            const SizedBox(height: 6),
            Text(
              text,
              style: TextStyle(
                color: color,
              ),
            ),
          ],
        ));
  }
}
