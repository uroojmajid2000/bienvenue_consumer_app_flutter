import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Advertisement/advertisement_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey;

  const BuildDrawer({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigate.to(context, AdvertisementScreen.id),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/ad.svg',
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Advertisement")
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const Divider(
              thickness: 1.0,
              height: 20,
            ),
            const Spacer(),
            Button(
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => globalKey.currentState!.closeDrawer()),
          ],
        ),
      )),
    );
  }
}
