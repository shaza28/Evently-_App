import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    iconTheme: IconThemeData(color: AppColors.black),
    useMaterial3: false,
    primaryColor: AppColors.blue,
    scaffoldBackgroundColor: AppColors.whiteBlue,
    cardTheme: CardTheme(
      color: AppColors.whiteBlue,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.blue,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.blue,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.whiteBlue),
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
      titleMedium: GoogleFonts.inter(
          fontSize: 14.sp, color: AppColors.black, fontWeight: FontWeight.bold),
      titleSmall: GoogleFonts.inter(
          fontSize: 14.sp, color: AppColors.black, fontWeight: FontWeight.bold),
    ),
  );
  static final ThemeData dark = ThemeData(
    iconTheme: IconThemeData(color: AppColors.offWhite),
    useMaterial3: false,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBlue,
      foregroundColor: AppColors.blue,
    ),
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.darkBlue,
    cardTheme: CardTheme(
      color: AppColors.darkBlue,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: AppColors.darkBlue,
      elevation: 16,
      shape: CircularNotchedRectangle(),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedItemColor: AppColors.offWhite,
        unselectedItemColor: AppColors.offWhite),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: StadiumBorder(
          side: BorderSide(color: AppColors.offWhite, width: 4.w)),
      backgroundColor: AppColors.darkBlue,
      foregroundColor: AppColors.offWhite,
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14.r),
        borderSide: BorderSide(color: AppColors.blue, width: 1.w),
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
        color: AppColors.offWhite,
      ),
      hintStyle: GoogleFonts.inter(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.offWhite,
    ),
      prefixIconColor: AppColors.offWhite,
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
          fontSize: 14.sp, fontWeight: FontWeight.w400, color: AppColors.offWhite),
      headlineLarge: GoogleFonts.inter(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.offWhite,
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.darkBlue,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.offWhite,
      ),
      titleMedium: GoogleFonts.inter(
          fontSize: 14.sp,
          color: AppColors.offWhite,
          fontWeight: FontWeight.bold),
      labelMedium:GoogleFonts.inter(
        fontWeight:FontWeight.bold,
        fontSize:20.sp,
        color:AppColors.offWhite,
      ) ,
      titleSmall: GoogleFonts.inter(
          fontSize: 14.sp,
          color: AppColors.black,
          fontWeight: FontWeight.bold),
    ),
  );
}
