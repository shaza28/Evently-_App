import 'package:evently_app/core/custom_elevated_buttom.dart';
import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widget/custom_tab_bar.dart';
import 'package:evently_app/core/widget/custom_text_button.dart';
import 'package:evently_app/core/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/category_model.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  CategoryModel selcetedCategory = CategoryModel.categories[1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Event"),
      ),
      body: Padding(
        padding: REdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(selcetedCategory.imagePath)),
              SizedBox(height: 16.h),
              CustomTabBar(
                  onCategoryItemClicked: (category) {
                    setState(() {
                      selcetedCategory = category;
                    });
                  },
                  categories: CategoryModel.categories,
                  selectedBackgroundColor: AppColors.blue,
                  unselectedBackgroundColor: Colors.transparent,
                  selectedForegroundColor: AppColors.whiteBlue,
                  unselectedForegroundColor: AppColors.blue),
              SizedBox(height: 16.h),
              Text(
                "Title",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                  hintText: "Event Title",
                  prefixIcon: Icon(Icons.edit_note_sharp),
                  keyboardType: TextInputType.text),
              SizedBox(height: 16.h),
              Text(
                "Description",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 8.h),
              CustomTextFormField(
                  hintText: "Event Description",
                  keyboardType: TextInputType.text,
                  maxLines: 4),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(Icons.date_range_outlined, color: AppColors.black),
                  SizedBox(width: 4.w),
                  Text(
                    "Event Date",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Spacer(),
                  CustomTextButton(
                      text: "Choose Date",
                      onTap: () {
                        showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(Duration(days: 365)), initialDate: DateTime.now() );
                      }),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 4.w),
                  Text(
                    "Event Time",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Spacer(),
                  CustomTextButton(text: "Choose Time", onTap: () {
                    showTimePicker(context: context, initialTime:TimeOfDay.now());

                  }),
                ],
              ),
              SizedBox(height: 24.h),
              CustomElevatedButtom(text: "Create Event", onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
