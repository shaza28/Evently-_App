import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widget/custom_tab_bar.dart';
import 'package:evently_app/core/widget/event_item.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r)),
          ),
          child: SafeArea(
            left: false,
            right: false,
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back ✨",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "Shaza",
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: AppColors.white,
                            ),
                            Text(
                              "Cairo, Egypt",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.light_mode,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {},
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "En",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                CustomTabBar(
                  categories: CategoryModel.categoryWithAll,
                  selectedBackgroundColor: AppColors.blue,
                  unselectedBackgroundColor: Colors.transparent,
                  selectedForegroundColor: AppColors.black,
                  unselectedForegroundColor: AppColors.whiteBlue,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
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
    );
  }
}
