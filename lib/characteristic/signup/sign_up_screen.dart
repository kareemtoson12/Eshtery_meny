import 'package:eshtry_meny/characteristic/signup/logic/cubit/signup_cubit.dart';
import 'package:eshtry_meny/characteristic/signup/logic/cubit/signup_state.dart';
import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:eshtry_meny/shared/styles/styles.dart';
import 'package:eshtry_meny/shared/widgets/continoue_with_social.dart';
import 'package:eshtry_meny/shared/widgets/custom_app_bar.dart';
import 'package:eshtry_meny/shared/widgets/text_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/styles/colors.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signupCubit = context.read<SignupCubit>();

    return Scaffold(
      appBar: customAppBar('SignUp', 'Hi ! nice to see you'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocListener<SignupCubit, SignupState>(
                listener: (context, state) {
                  state.when(
                    initial: () {},
                    loading: () {
                      // Show loading indicator, for example
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                    success: (message) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(' Registration successful!')),
                      );
                      Navigator.pushReplacementNamed(context, Routes.cart);
                    },
                    error: (error) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(error)),
                      );
                    },
                  );
                },
                child: Form(
                  key: signupCubit.formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.dm,
                          bottom: 10.dm,
                          left: 20.dm,
                          right: 20.dm,
                        ),
                        child: const ContinoueWithSocial(
                          iamgePath: 'assets/pngimages/googleIcon.png',
                          socialMediaName: 'Continue with Google',
                        ),
                      ),
                      Text(
                        'Or',
                        style: AppTextStyles.font20PurpuleRegular,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.dm,
                          bottom: 10.dm,
                          left: 20.dm,
                          right: 20.dm,
                        ),
                        child: CsutomTextFiled(
                          controller: signupCubit.nameController,
                          prefexIcon: Icon(Icons.person),
                          textOftextField: 'Username',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.dm,
                          bottom: 10.dm,
                          left: 20.dm,
                          right: 20.dm,
                        ),
                        child: CsutomTextFiled(
                          controller: signupCubit.emailController,
                          prefexIcon: Icon(Icons.email),
                          textOftextField: 'Email',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.dm,
                          bottom: 0.dm,
                          left: 20.dm,
                          right: 20.dm,
                        ),
                        child: CsutomTextFiled(
                          controller: signupCubit.passwordController,
                          prefexIcon: Icon(Icons.lock),
                          textOftextField: 'Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.dm,
                          bottom: 0.dm,
                          left: 20.dm,
                          right: 20.dm,
                        ),
                        child: CsutomTextFiled(
                          controller: signupCubit.phoneController,
                          prefexIcon: Icon(Icons.phone),
                          textOftextField: 'Phone number',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a phone number';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.dg),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed(Routes.loginScreen);
                              },
                              child: Text(
                                'Already have an account? Login',
                                style: AppTextStyles.font20blackRegular,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            margin: EdgeInsets.symmetric(horizontal: 110.w),
                            decoration: const BoxDecoration(
                                color: CustomsColros.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                                child: Text(
                              'Signup',
                              style: AppTextStyles.font20WhiteBlod,
                            )),
                          ),
                          onTap: () {
                            if (signupCubit.formKey.currentState?.validate() ??
                                false) {
                              // If the form is valid, trigger the signup logic
                              signupCubit.emitSignupStates();
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
