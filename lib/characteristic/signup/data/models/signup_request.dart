import 'package:json_annotation/json_annotation.dart';

part 'signup_request.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String username;
  final String email;
  final String password;
  final String phoneNumber;

  SignupRequestBody(
      {required this.username,
      required this.email,
      required this.password,
      required this.phoneNumber});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
