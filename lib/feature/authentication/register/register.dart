import 'package:evently_app/config/language/language_selector.dart';
import 'package:evently_app/core/custom_elevated_buttom.dart';
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/routes_manager/routes_manager.dart';
import 'package:evently_app/core/resourses/validators.dart';
import 'package:evently_app/core/widget/custom_text_button.dart';
import 'package:evently_app/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../l10n/app_localizations.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  static const routeName = "/register";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool securePassword = true;
  bool secureRePassword = true;
  late TextEditingController _nameController ;
  late TextEditingController _emailController ;
  late TextEditingController _passwordController;
  late TextEditingController _rePasswordController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState(){
    super.initState();
    _nameController=TextEditingController();
    _emailController=TextEditingController();
    _passwordController=TextEditingController();
    _rePasswordController=TextEditingController();
  }
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();

    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).viewInsets.bottom;
    AppLocalizations appLocalizations= AppLocalizations.of(context)!;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.only(
              top: 47,
              left: 8,
              right: 8,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Image.asset(
                      AppImages.eventlyLogo,
                      height: 200.h,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    controller: _nameController,
                    validator: Validator.validateName,
                    labelText: appLocalizations.name,
                    prefixIcon: const Icon(Icons.person),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    controller: _emailController,
                    validator: Validator.validateEmail,
                    labelText: appLocalizations.email,
                    prefixIcon: const Icon(Icons.email),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    controller: _passwordController,
                    validator: Validator.validatePassword,
                    isSecure: securePassword,
                    labelText: appLocalizations.password,
                    prefixIcon: const Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: _onTooglePasswordIconClicked,
                      icon: Icon(
                        securePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    controller: _rePasswordController,
                    validator: (input) {
                      if (input == null || input.trim().isEmpty) {
                        return "Please,confirm password";
                      }
                      if (input != _passwordController.text) {
                        return "Password doesn't match";
                      }
                      return null;
                    },
                    isSecure: secureRePassword,
                    labelText: appLocalizations.re_password,
                    prefixIcon: const Icon(Icons.lock),
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      onPressed: _onToogleRePasswordIconClicked,
                      icon: Icon(
                        secureRePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomElevatedButtom(
                    text: appLocalizations.create_account,
                    onPress:_createAccount,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${appLocalizations .dont_have_account} ؟ ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      CustomTextButton(
                          text: appLocalizations.login,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, AppRoutes.login);
                          }),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  LanguageSelector(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTooglePasswordIconClicked() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onToogleRePasswordIconClicked() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }

  void _createAccount() {
    if (_formKey.currentState?.validate() == false) return;
  }
}

bool isValidRePassword(String password) {
  return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(password);
}


