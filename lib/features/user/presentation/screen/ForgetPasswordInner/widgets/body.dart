import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/login_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset('assets/logos/bienvenue.svg'),
          const SizedBox(height: 30),
          const Text(
            'Forget password?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 22),
          TextFieldContainer(
            child: MyTextField(
              obscureText: true,
              hintText: 'New Password',
              onChange: () {},
            ),
          ),
          const SizedBox(height: 15),
          TextFieldContainer(
            child: MyTextField(
              obscureText: true,
              hintText: 'Confirm Password',
              onChange: () {},
            ),
          ),
          const SizedBox(height: 22),
          Button(
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              onPressed: () => Navigate.to(context, LoginScreen.id)),
        ],
      ),
    );
  }
}
