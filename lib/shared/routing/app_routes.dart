import 'package:eshtry_meny/characteristic/cart/cart_screen.dart';
import 'package:eshtry_meny/characteristic/login/login_screen.dart';
import 'package:eshtry_meny/characteristic/onboarding/view/onboarding_screen.dart';
import 'package:eshtry_meny/characteristic/otpVerification/otp_screen1.dart';
import 'package:eshtry_meny/characteristic/otpVerification/otp_screen2.dart';
import 'package:eshtry_meny/characteristic/productDetails/product_details_screen.dart';
import 'package:eshtry_meny/characteristic/resetpassword/resetPassword.dart';
import 'package:eshtry_meny/characteristic/signup/logic/cubit/signup_cubit.dart';
import 'package:eshtry_meny/characteristic/signup/sign_up_screen.dart';
import 'package:eshtry_meny/characteristic/splash/splash_screen.dart';
import 'package:eshtry_meny/shared/di/dependency_injection.dart';
import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  Route? gnerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case Routes.signUPScreen:
        // Fixed the syntax issue: `getit` should be `GetIt` if you're using the GetIt package
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getit<SignupCubit>(), // Fix GetIt usage
            child: SignUpScreen(),
          ),
        );
      case Routes.otpScreen1:
        return MaterialPageRoute(builder: (context) => const OtpScreen1());

      case Routes.otpScreen2:
        return MaterialPageRoute(builder: (context) => const OtpScreen2());

      case Routes.spalshScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case Routes.resetpassword:
        return MaterialPageRoute(
            builder: (context) => const ResetpasswordScreen());
      case Routes.onboardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());

      case Routes.productDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => const ProductDetailsScreen());
      case Routes.cart:
        return MaterialPageRoute(builder: (context) => const CartScreen());

      default:
        return null;
    }
  }
}
