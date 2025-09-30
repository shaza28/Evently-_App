import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  String selectedLang = "ar";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.blue, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildFlag(
              lang: "en",
              image: AppImages.englishLogo,
            ),
            _buildFlag(
              lang: "ar",
              image: AppImages.egyptLogo,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFlag({required String lang, required String image}) {
    bool isSelected = selectedLang == lang;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedLang = lang;
        });
        print("$lang Selected");
      },
      child: Container(
        padding: EdgeInsets.all(6.w),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue.withOpacity(0.5) : Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Image.asset(
          image,
          width: 28.w,
          height: 28.w,
        ),
      ),
    );
  }
}
