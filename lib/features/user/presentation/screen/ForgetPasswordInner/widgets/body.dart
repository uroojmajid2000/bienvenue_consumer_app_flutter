import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/login_screen.dart';
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
  final _newpassController = TextEditingController();
  final _confirmpassController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _onSuccess() => Navigate.to(context, LoginScreen.id);

  void _onSubmit(VoidCallback onSuccess) async {
    final form = _formKey.currentState;
    if (form!.validate()) {
      FocusManager.instance.primaryFocus?.unfocus();
      if (_newpassController.text != _confirmpassController.text) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Alert(
              heading: 'Unsucessfully!',
              body: 'Password Not Match',
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
                controller: _newpassController,
                keyboardType: TextInputType.number,
                obscureText: true,
                hintText: 'New Password',
                onChange: (value) {},
              ),
            ),
            const SizedBox(height: 15),
            TextFieldContainer(
              child: MyTextField(
                controller: _confirmpassController,
                keyboardType: TextInputType.number,
                obscureText: true,
                hintText: 'Confirm Password',
                onChange: (value) {},
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
              onPressed: () => _onSubmit(_onSuccess),
            )
          ],
        ),
      ),
    );
  }
}
