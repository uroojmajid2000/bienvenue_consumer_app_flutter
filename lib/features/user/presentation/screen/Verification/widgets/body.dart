import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/login_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Otp/widgets/text_field_box.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final digit1Controller = TextEditingController();
  final digit2Controller = TextEditingController();
  final digit3Controller = TextEditingController();
  final digit4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset('assets/logos/bienvenue.svg'),
          const SizedBox(height: 30),
          const Text(
            'Verification code',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: 288,
            child: Text(
              textAlign: TextAlign.center,
              'We have sent the code verification to Your Mobile Number',
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldBox(
                controller: digit1Controller,
                autofocus: true,
                onChange: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
              const SizedBox(width: 10),
              TextFieldBox(
                controller: digit2Controller,
                onChange: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
              const SizedBox(width: 10),
              TextFieldBox(
                controller: digit3Controller,
                onChange: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
              const SizedBox(width: 10),
              TextFieldBox(
                controller: digit4Controller,
                onChange: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                    // onSubmit(onSuccess);
                  }
                },
              ),
            ],
          ),
          const SizedBox(height: 22),
          Button(
              child: const Text(
                'Submit',
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
