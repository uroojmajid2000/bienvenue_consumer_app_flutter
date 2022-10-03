import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/login_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String id = "splash_screen";

  @override
  Widget build(BuildContext context) {
    void _navigateToNextScreen() async {
      await Future.delayed(const Duration(seconds: 3));
      Navigate.next(context, LoginScreen.id);
    }

    useEffect(() {
      _navigateToNextScreen();

      return null;
    }, []);

    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
