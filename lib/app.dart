import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Splash/splash_screen.dart';
import 'package:bienvenue_consumer_app_flutter/shared/routes/routes.dart';
import 'package:bienvenue_consumer_app_flutter/shared/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Bienvenue',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData(),
      routes: Routes.routes,
      initialRoute: SplashScreen.id,
    );
  }
}
