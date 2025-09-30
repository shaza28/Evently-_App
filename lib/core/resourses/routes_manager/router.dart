
import 'package:evently_app/core/resourses/routes_manager/routes_manager.dart';
import 'package:evently_app/feature/authentication/register/register.dart';
import 'package:evently_app/feature/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../feature/authentication/login/login.dart';

class RoutesManager{
  static Route? router (RouteSettings settings){

    switch(settings.name){
      case AppRoutes.SplashScreen:{
        return MaterialPageRoute(builder: (context)=>SplashScreen());
      }
      case AppRoutes.register:{
        return MaterialPageRoute(builder: (context)=>Register());
      }
      case AppRoutes.login:{
        return MaterialPageRoute(builder: (context)=>Login());
      }
    }

  }

}