/*
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/feature/main_layout/profile/custom_drop_down_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: REdgeInsets.symmetric(vertical: 16, horizontal: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(16.r)),
            ),
            child: SafeArea(
              bottom: false,
              left: false,
              right: false,
              child: Row(
                children: [
                  Image.asset(AppImages.profile),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Shaza",
                          style: GoogleFonts.inter(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white),
                        ),
                        Text(
                          "shaza@gmail.com",
                          style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.h),
          CustomDropDownItem(
            label: "Theme",
            selectedLabel: "Light",
            menuItem: ["Light", "Dark"],
          ),
          Spacer(flex: 7),
          CustomDropDownItem(
            label: "Language",
            selectedLabel: "English",
            menuItem: ["English", "Arabic"],
          ),
          Container(
            margin:EdgeInsets.symmetric(horizontal: 16) ,
            child: ElevatedButton(
              style:  ElevatedButton.styleFrom(
                padding:REdgeInsets.symmetric(horizontal: 16,vertical: 16) ,
                backgroundColor:AppColors.red,
                foregroundColor:AppColors.white,
                textStyle:  GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ) ,
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 8.h),
                    Text(
                      "Logout",

                    )
                  ],
                )),
          ),
            Spacer(flex: 3),
        ],
      ),
    );
  }
}
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/assets_manager.dart';
import '../../../core/resourses/colors_manager.dart';
import 'custom_drop_down_item.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // خلي الصفحة scrollable
      child: Container(
        margin: REdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: REdgeInsets.symmetric(vertical: 16, horizontal: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(16.r)),
              ),
              child: SafeArea(
                bottom: false,
                left: false,
                right: false,
                child: Row(
                  children: [
                    Image.asset(AppImages.profile),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shaza",
                            style: GoogleFonts.inter(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white),
                          ),
                          Text(
                            "shaza@gmail.com",
                            style: GoogleFonts.inter(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            CustomDropDownItem(
              label: "Theme",
              selectedLabel: "Light",
              menuItem: ["Light", "Dark"],
            ),
            SizedBox(height: 24.h), // بدل Spacer
            CustomDropDownItem(
              label: "Language",
              selectedLabel: "English",
              menuItem: ["English", "Arabic"],
            ),
            SizedBox(height: 32.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: REdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  backgroundColor: AppColors.red,
                  foregroundColor: AppColors.white,
                  textStyle: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 8.h),
                    Text("Logout"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h), // بدل Spacer
          ],
        ),
      ),
    );
  }
}

