import 'package:dio/dio.dart';
import 'package:eshtry_meny/characteristic/signup/data/models/signup_request.dart';
import 'package:eshtry_meny/characteristic/signup/data/models/signup_response.dart';
import 'package:eshtry_meny/shared/networking/constant.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;
  @POST(ApiConstants.signUp)
  Future<SignUpResponse> signUp(@Body() SignupRequestBody signUpRequestBody);
}
