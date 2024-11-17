import 'package:eshtry_meny/characteristic/signup/data/models/signup_request.dart';
import 'package:eshtry_meny/characteristic/signup/data/models/signup_response.dart';
import 'package:eshtry_meny/shared/networking/api_results.dart';
import 'package:eshtry_meny/shared/networking/api_services.dart';
import 'package:eshtry_meny/shared/networking/error_handling.dart';

class SignupRepo {
  final ApiServices apiServices;
  SignupRepo(this.apiServices);
  Future<ApiResult<SignUpResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await apiServices.signUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(
        ErrorHandler.handle(errro),
      );
    }
  }
}
