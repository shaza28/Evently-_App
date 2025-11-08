import 'package:evently_app/core/prefs_manager/prefs_manager.dart';
import 'package:evently_app/core/resourses/routes_manager/router.dart';
import 'package:evently_app/core/resourses/routes_manager/routes_manager.dart';
import 'package:evently_app/config/theme/theme_manager.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:evently_app/providers/theme_provider.dart';
import 'package:evently_app/providers/laguage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsManager.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ConfigProvider()),
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
      ],
      child: EventlyApp(),
    ),
  );
}

class EventlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // point of object that shares on the app object already created
    var configProvider = Provider.of<ConfigProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);

    // كأنى استلفت فلوس من حد وبرجعها لحد تانى

    return ScreenUtilInit(
      designSize: const Size(393, 841),
      splitScreenMode: true, // فكرة فتح اكتر من app فى نفس الوقت
      minTextAdapt: true, // text => responsive
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.router,
          initialRoute: AppRoutes.mainLayout,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: configProvider.currentTheme, // theme mode => light or dark

          // language => take from provider (dynamic)
          locale: languageProvider.currentLanguage,

          localizationsDelegates: const [
            AppLocalizations.delegate, // ملف الترجمة المخصص
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          supportedLocales: const [
            Locale("en"),
            Locale("ar"),
          ],
        );
      },
      child: const SizedBox.shrink(), // عشان ScreenUtilInit محتاج child
    );
  }
}

/*
import 'package:evently_app/core/resourses/routes_manager/router.dart';
import 'package:evently_app/feature/splash_screen/splash_screen.dart';
import 'package:evently_app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
          initialRoute: AppRoutes.mainLayout,
          theme:ThemeManager.dark ,
          themeMode: ThemeMode.dark,
          darkTheme: ThemeManager.dark,
          locale: Locale("ar"), // language => by default En
        localizationsDelegates:
        localizationDelagets:AppLocalizations.localizationsDelegate,
            ,
          supportedLocales: [
            Locale("en"),
            Locale("ar")
          ],


        );
      },
      child: const SizedBox.shrink(), // عشان ScreenUtilInit محتاج child
    );
  }
}
*/
