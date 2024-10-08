import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int code;
  ApiErrorModel({required this.code, this.message});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
