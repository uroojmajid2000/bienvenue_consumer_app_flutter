import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/ForgetPasswordInner/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/back_layout_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordInnerScreen extends StatelessWidget {
  const ForgetPasswordInnerScreen({Key? key}) : super(key: key);

  static String id = "forget_password_inner_screen";

  @override
  Widget build(BuildContext context) {
    return const BackLayout(
      hideBottomNavigation: true,
      body: Body(),
    );
  }
}
