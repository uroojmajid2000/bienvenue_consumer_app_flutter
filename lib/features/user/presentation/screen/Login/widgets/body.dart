import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/CreateAccount/create_account_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/ForgetPassword/forget_password_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/home_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/widgets/feature_button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/alert.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _onSuccess() => Navigate.to(context, HomeScreen.id);
  void _onSubmit(VoidCallback onSuccess) async {
    final form = _formKey.currentState;
    if (form!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();
      if (_emailController.text != '123' && _passController.text != '123') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Alert(
              heading: 'Login Failed!',
              body: 'Email & Password Incorrect',
            );
          },
        );
      } else {
        onSuccess.call();
      }
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            SvgPicture.asset('assets/logos/bienvenue.svg'),
            const SizedBox(height: 40),
            const Text(
              'Login Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 30),
            TextFieldContainer(
                child: MyTextField(
              controller: _emailController,
              hintText: 'Email',
              keyboardType: TextInputType.number,
              onChange: (value) {},
            )),
            const SizedBox(height: 15),
            TextFieldContainer(
                child: MyTextField(
              controller: _passController,
              obscureText: true,
              hintText: 'Password',
              keyboardType: TextInputType.number,
              onChange: (value) {},
            )),
            const SizedBox(height: 15),
            TextFieldContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Navigate.to(context, ForgetPasswordScreen.id),
                    child: const Text('Forget your password?'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            TextFieldContainer(
              child: Row(children: [
                Expanded(
                    child: Button(
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  // onPressed: () => Navigate.to(context, HomeScreen.id)
                  onPressed: () => _onSubmit(_onSuccess),
                )),
                const SizedBox(width: 10),
                FeatureButton(
                  child: SvgPicture.asset('assets/icons/face_unlock.svg'),
                ),
                const SizedBox(width: 10),
                FeatureButton(
                  child: SvgPicture.asset('assets/icons/fingerprint.svg'),
                ),
              ]),
            ),
            const SizedBox(height: 25),
            TextFieldContainer(
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'OR',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not registered Yet?'),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () => Navigate.to(context, CreateAccountScreen.id),
                  child: const Text('Create an Account'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
