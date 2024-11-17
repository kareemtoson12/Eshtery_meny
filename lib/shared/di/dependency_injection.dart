import 'package:dio/dio.dart';
import 'package:eshtry_meny/characteristic/signup/data/repo/signup_repo.dart';
import 'package:eshtry_meny/characteristic/signup/logic/cubit/signup_cubit.dart';
import 'package:eshtry_meny/shared/networking/api_services.dart';
import 'package:eshtry_meny/shared/networking/dio_refactory.dart';

import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setUpGetIt() async {
  //Dio
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiServices>(() => ApiServices(dio));
  //signin
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerFactory<SignupCubit>(() => SignupCubit(getit()));
}
