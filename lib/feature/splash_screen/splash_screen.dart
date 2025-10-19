/*
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/resourses/routes_manager/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = "/splash";


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, AppRoutes.register);

      });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.white,
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child:Column(
            children: [
              const Spacer(flex: 10),
              Image.asset(AppImages.eventlyLogo),
              const Spacer(flex: 8),
              Image.asset(AppImages.branding,width: 200,),


            ],

        ),
      ) ,
      ) );
  }
}
*/
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/resourses/routes_manager/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.register);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 50),
                Image.asset(AppImages.eventlyLogo),
                Image.asset(
                  AppImages.branding,
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
