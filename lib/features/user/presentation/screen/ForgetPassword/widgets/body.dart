import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/ForgetPassword/forget_password_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/ForgetPassword/widgets/forget_card.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:bienvenue_consumer_app_flutter/shared/widgets/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            'Forget password?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 22),
          const SizedBox(
            width: 288,
            child: Text(
              textAlign: TextAlign.center,
              'Select which contact details should we use to reset your password',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 22),
          ForgetCard(
            heading: 'Via sms:',
            value: '•••• •••• 4235',
            image: 'assets/icons/forget_sms.svg',
          ),
          const SizedBox(height: 22),
          ForgetCard(
            heading: 'Via email:',
            value: '•••• @gmail.com',
            image: 'assets/icons/forget_sms.svg',
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
              onPressed: () => Navigate.to(context, ForgetPasswordScreen.id)),
        ],
      ),
    );
  }
}
