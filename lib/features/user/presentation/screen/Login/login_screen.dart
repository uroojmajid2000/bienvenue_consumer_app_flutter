import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/widgets/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String id = "login_screen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Body(),
        ),
      ),
    );
  }
}
