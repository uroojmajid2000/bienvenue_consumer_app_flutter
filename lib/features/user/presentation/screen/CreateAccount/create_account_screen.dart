import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/CreateAccount/widgets/body.dart';
import 'package:bienvenue_consumer_app_flutter/shared/Layout/back_layout_screen.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  static String id = "create_account_screen";

  @override
  Widget build(BuildContext context) {
    return const BackLayout(
      title: 'Create Account',
      hideBottomNavigation: true,
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
