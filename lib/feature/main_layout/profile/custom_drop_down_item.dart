import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resourses/colors_manager.dart';

class CustomDropDownItem extends StatelessWidget {
  const CustomDropDownItem(
      {super.key,
      required this.label,
      required this.selectedLabel,
      required this.menuItem});
  final String label;
  final String selectedLabel;
  final List<String> menuItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(height: 24.h),
        Container(
          padding: REdgeInsets.symmetric(vertical: 16, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(width: 1, color: AppColors.blue),
          ),
          width: double.infinity,
          child: Row(
            children: [
              Text(
                selectedLabel,
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              DropdownButton<String>(
                underline: Container(),
                value: "Light", // القيمة الافتراضية
                items: menuItem.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (selectedItem) {
                  print(selectedItem);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
