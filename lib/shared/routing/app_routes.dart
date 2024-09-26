import 'package:eshtry_meny/characteristic/login/login_screen.dart';
import 'package:eshtry_meny/characteristic/onboarding/view/onboarding_screen.dart';
import 'package:eshtry_meny/characteristic/otpVerification/otp_screen1.dart';
import 'package:eshtry_meny/characteristic/otpVerification/otp_screen2.dart';
import 'package:eshtry_meny/characteristic/resetpassword/resetPassword.dart';
import 'package:eshtry_meny/characteristic/signup/sign_up_screen.dart';
import 'package:eshtry_meny/characteristic/splash/splash_screen.dart';
import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route? gnerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case Routes.signUPScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());

      case Routes.otpScreen1:
        return MaterialPageRoute(builder: (context) => const OtpScreen1());

      case Routes.otpScreen2:
        return MaterialPageRoute(builder: (context) => const OtpScreen2());

      case Routes.spalshScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case Routes.resetpassword:
        return MaterialPageRoute(
            builder: (context) => const ResetpasswordScreen());
      case Routes.onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());

      default:
        return null;
    }
  }
}
