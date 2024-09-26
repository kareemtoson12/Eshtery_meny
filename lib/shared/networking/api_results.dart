import 'package:eshtry_meny/shared/networking/error_handling.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_results.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler objOferrorHander) = Failure<T>;
}
