import 'package:evently_app/core/resourses/routes_manager/router.dart';
import 'package:evently_app/feature/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/theme/theme_manager.dart';
import 'core/resourses/routes_manager/routes_manager.dart';

void main() {
  runApp(EventlyApp());
}

class EventlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 841),
      splitScreenMode:true,// فكرة فتح اكتر من app فى نفس الوقت
      minTextAdapt: true,// text=> responsive
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.router,
          initialRoute: AppRoutes.SplashScreen,
          theme: ThemeManager.light,
          //darkTheme: ThemeManager.dark,
          locale: const Locale("en"), // language => by default En
        );
      },
      child: const SizedBox.shrink(), // عشان ScreenUtilInit محتاج child
    );
  }
}
