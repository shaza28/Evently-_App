import 'package:evently_app/core/custom_elevated_buttom.dart';
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/resourses/validators.dart';
import 'package:evently_app/core/widget/custom_text_button.dart';
import 'package:evently_app/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/routes_manager/routes_manager.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const routeName = "/login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool securePassword = true;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.only(
            top:47 ,
              left: 8,
              right: 8,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(AppImages.eventlyLogo),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      controller: _emailController,
                      validator: Validator.validateEmail,
                      labelText: "E-mail",
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.email),
                    ),
                    SizedBox(height: 16.h),
                    CustomTextFormField(
                      controller: _passwordController,
                      validator: Validator.validatePassword,
                      isSecure: securePassword,
                      labelText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          __onTooglePasswordIconClicked();
                        },
                        icon: Icon(securePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextButton(
                      text: "Forget Password?",
                      onTap: () {},
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 24.h),
                    CustomElevatedButtom(text: "Login", onPress: _login),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have Account ?",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        CustomTextButton(
                            text: "Create Account",
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, AppRoutes.register);
                            }),
                        SizedBox(height: 40.h),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            indent: 42.w,
                            endIndent: 16.w,
                            thickness: 1,
                            color: AppColors.blue,
                          ),
                        ),
                        Text(
                          "Or",
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.blue),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            indent: 16.w,
                            endIndent: 42.w,
                            color: AppColors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppImages.googleIcon),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Login With Google",
                            style: GoogleFonts.inter(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void __onTooglePasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _login() {
    if (_formKey.currentState?.validate() == false) return;
  }
}

