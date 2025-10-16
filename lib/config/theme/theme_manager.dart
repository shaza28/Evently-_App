import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    useMaterial3: false,
    appBarTheme:AppBarTheme(
      backgroundColor:AppColors.whiteBlue,
      foregroundColor:AppColors.blue ,
      titleTextStyle:GoogleFonts.roboto(fontSize:18.sp,fontWeight:FontWeight.w400,color: AppColors.blue,) ,
    centerTitle: true,) ,
    primaryColor: AppColors.blue,
    scaffoldBackgroundColor: AppColors.whiteBlue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue,
      primary: AppColors.whiteBlue,
      onPrimary: AppColors.blue,
      secondary: Colors.transparent,
      onSecondary: AppColors.whiteBlue,
    ),
    cardTheme:CardTheme(
      color:AppColors.whiteBlue,
      elevation:8,
      shape:RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(8.r),
      ),
    ) ,
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.blue,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape:
          StadiumBorder(side: BorderSide(color: AppColors.white, width: 4.w)),
      backgroundColor: AppColors.blue,
      foregroundColor: AppColors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.grey, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.blue, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.red, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.red, width: 1.w),
      ),
      labelStyle: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
      ),
      prefixIconColor: AppColors.grey,
      suffixIconColor: AppColors.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      padding: REdgeInsets.symmetric(
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      backgroundColor: AppColors.blue,
      foregroundColor: AppColors.white,
      textStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w500, fontSize: 20.sp, color: AppColors.white),
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      padding: REdgeInsets.symmetric(vertical: 16),
      side: BorderSide(color: AppColors.blue, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
    )),
    textTheme: TextTheme(
      headlineSmall: GoogleFonts.inter(
          fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.blue,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      titleSmall: GoogleFonts.inter(
          fontSize: 14.sp,
          color: AppColors.black,
          fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.inter(
          fontSize: 16.sp,
          color: AppColors.black,
          fontWeight: FontWeight.w400),


    ),

  );
  static final ThemeData dark = ThemeData(
    useMaterial3: false,
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.whiteBlue,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blue,
      primary: AppColors.blue,
      onPrimary: AppColors.white,
      secondary: Colors.transparent,
      onSecondary: AppColors.white,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.blue,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape:
      StadiumBorder(side: BorderSide(color: AppColors.white, width: 4.w)),
      backgroundColor: AppColors.blue,
      foregroundColor: AppColors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.grey, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.blue, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.red, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.red, width: 1.w),
      ),
      labelStyle: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
      ),
      hintStyle: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
      ),
      prefixIconColor: AppColors.grey,
      suffixIconColor: AppColors.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: REdgeInsets.symmetric(
            vertical: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          backgroundColor: AppColors.blue,
          foregroundColor: AppColors.white,
          textStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w500, fontSize: 20.sp, color: AppColors.white),
        )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: REdgeInsets.symmetric(vertical: 16),
          side: BorderSide(color: AppColors.blue, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        )),
    textTheme: TextTheme(
      headlineSmall: GoogleFonts.inter(
          fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.blue,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    ),
  );
}




/*import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/resourses/app_colors.dart'; // لو عندك ملف للألوان

void main() {
  runApp(const EventlyApp());
}

class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 841),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,

            // هنا بتحدد الخط الافتراضي للتطبيق كله
            fontFamily: "Kamali", // أو Inter حسب ما تحب

            textTheme: TextTheme(
              bodyLarge: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
              ),
              bodyMedium: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.grey,
              ),
              labelLarge: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grey,
              ),
            ),
          ),
          home: const HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Font Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("This is using the default Kamali font"),
            Text("You can still override with Inter if needed",
                style: TextStyle(fontFamily: "Inter")),
          ],
        ),
      ),
    );
  }
}
*/
