import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widget/event_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/category_model.dart';
import '../../../models/event_model.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.blue,
                ),
                hintText: "Search for Event",
                hintStyle: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blue,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: AppColors.blue, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.r),
                  borderSide: BorderSide(color: AppColors.blue, width: 1),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 20,
              itemBuilder: (context, index) => EventItem(
                event: EventModel(
                  category: CategoryModel.categories[3],
                  title: "tittle",
                  description: "Meeting for Updating The Development Method",
                  dateTime: DateTime.now(),
                  timeOfDay: TimeOfDay.now(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
