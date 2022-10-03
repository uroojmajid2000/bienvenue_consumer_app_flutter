import 'package:bienvenue_consumer_app_flutter/features/notifications/presentation/screen/notifications_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Advertisement/advertisement_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Bill/bill_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/BillDetail/bill_detail_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/ProductDetail/product_details_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/product/presentation/screen/Scan/scan_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/CreateAccount/create_account_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/ForgetPassword/forget_password_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/ForgetPasswordInner/forget_password_inner_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Home/home_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Login/login_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Otp/otp_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Profile/profile_screen.dart';
import 'package:bienvenue_consumer_app_flutter/features/user/presentation/screen/Splash/splash_screen.dart';

import 'package:flutter/material.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AdvertisementScreen.id: (context) => const AdvertisementScreen(),
    BillScreen.id: (context) => const BillScreen(),
    BillDetailScreen.id: (context) => const BillDetailScreen(),
    CreateAccountScreen.id: (context) => const CreateAccountScreen(),
    ForgetPasswordScreen.id: (context) => const ForgetPasswordScreen(),
    ForgetPasswordInnerScreen.id: (context) =>
        const ForgetPasswordInnerScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
    LoginScreen.id: (context) => const LoginScreen(),
    NotificationScreen.id: (context) => const NotificationScreen(),
    ProductDetailScreen.id: (context) => const ProductDetailScreen(),
    ProfileScreen.id: (context) => const ProfileScreen(),
    ScanScreen.id: (context) => const ScanScreen(),
    SplashScreen.id: (context) => const SplashScreen(),
    OtpScreen.id: (context) => OtpScreen(),
  };
}
