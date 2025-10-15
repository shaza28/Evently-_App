import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabItem extends StatelessWidget {
  CustomTabItem(
      {super.key,
      required this.category,
      required this.selectedBackgroundColor,
      required this.unselectedBackgroundColor,
      required this.selectedForegroundColor,
      required this.unselectedForegroundColor,
      required this.isSelected});
  final CategoryModel category;
  final Color selectedBackgroundColor;
  final Color unselectedBackgroundColor;
  final Color selectedForegroundColor;
  final Color unselectedForegroundColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: isSelected ? AppColors.whiteBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(46.r),
        border:Border.all(width: 2,color:selectedBackgroundColor ),
      ),

      child: Row(
        children: [
          Icon(category.icon, color: isSelected?selectedForegroundColor:unselectedForegroundColor),
          SizedBox(width: 8.w),
          Text(
            category.name,
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: isSelected?selectedForegroundColor:unselectedForegroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
