import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Profile/profile_screen.dart';
import 'package:bienvenue_consumer_app_flutter/resources/constants.dart';
import 'package:bienvenue_consumer_app_flutter/shared/layout/widgets/search_bar.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:flutter/material.dart';

class BuildAppbar extends StatelessWidget with PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalKey;

  const BuildAppbar({super.key, required this.globalKey});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => globalKey.currentState!.openDrawer(),
                child: const Icon(Icons.menu),
              ),
              const SizedBox(width: 15),
              const Expanded(child: SearchBar()),
              const SizedBox(width: 15),
              GestureDetector(
                onTap: () => Navigate.to(context, ProfileScreen.id),
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor.shade50,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(9.0))),
                  width: 44.0,
                  height: 50.0,
                  child: const Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
