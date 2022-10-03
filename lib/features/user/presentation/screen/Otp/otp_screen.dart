import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Otp/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/back_layout_screen.dart';
import 'package:flutter/material.dart';

class ScreenArguments {
  final String route;

  ScreenArguments(this.route);
}

class OtpScreen extends StatelessWidget {
  static String id = "otp_screen";

  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return const BackLayout(
        hideBottomNavigation: true,
        title: 'OTP',
        body: SafeArea(child: SingleChildScrollView(child: Body())));
  }
}
