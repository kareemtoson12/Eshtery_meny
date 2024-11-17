import 'package:bloc/bloc.dart';

import 'package:eshtry_meny/characteristic/signup/data/models/signup_request.dart';
import 'package:eshtry_meny/characteristic/signup/data/repo/signup_repo.dart';
import 'package:eshtry_meny/characteristic/signup/logic/cubit/signup_state.dart';

import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo signupRepoInstance;

  SignupCubit(this.signupRepoInstance) : super(SignupState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(SignupState.loading());
    final response = await signupRepoInstance.signup(
      SignupRequestBody(
          username: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          phoneNumber: phoneController.text),
    );
    response.when(success: (mesaage) {
      emit(SignupState.success(mesaage.status.toString()));
    }, failure: (error) {
      emit(SignupState.error(error.apiErrorModel.message ?? ''));
    });
  }
}
