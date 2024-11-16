import 'package:eshtry_meny/EshtryMeny.dart';
import 'package:eshtry_meny/characteristic/signup/data/models/signup_request.dart';
import 'package:eshtry_meny/shared/networking/api_services.dart';
import 'package:eshtry_meny/shared/networking/dio_refactory.dart';
import 'package:eshtry_meny/shared/routing/app_routes.dart';
import 'package:flutter/material.dart';

void main() async {
  final dio = DioFactory.getDio();

  // Create an instance of ApiServices
  final apiService = ApiServices(dio);

  // Test the API
  try {
    // Create the request object
    final signupRequest = SignupRequestBody(
      username: "kareemo",
      email: "toson289782@gmail.com",
      password: "01226211829Kk@#",
      phoneNumber: "0122621898",
    );

    // Call the sign-up API
    final response = await apiService.signUp(signupRequest);

    // Print the response
    print("Response: ${response.message}");
  } catch (e) {
    print("Error: $e");
  }
  runApp(EshtryMeny(
    appRouter: AppRoutes(),
  ));
}
