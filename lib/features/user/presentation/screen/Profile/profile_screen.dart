import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Profile/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/back_layout_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String id = "profile_screen";

  @override
  Widget build(BuildContext context) {
    return const BackLayout(
      body: Body(),
    );
  }
}
