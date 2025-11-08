import 'package:evently_app/core/resourses/colors_manager.dart';
import 'package:evently_app/core/widget/custom_tab_bar.dart';
import 'package:evently_app/core/widget/event_item.dart';
import 'package:evently_app/models/category_model.dart';
import 'package:evently_app/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../l10n/app_localizations.dart';
import '../../../providers/config_provider.dart';
import '../../../providers/laguage_provider.dart';


class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    var configProvider = Provider.of<ConfigProvider>(context);    return Column(
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
                         "${appLocalizations.welcome_back} ✨",
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
                      onPressed: () {
                        configProvider.changeAppTheme(configProvider.isDark?ThemeMode.light:ThemeMode.dark,);
                      },
                      icon:  Icon(
                        configProvider.isDark?Icons.dark_mode:Icons.light_mode,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    InkWell(
                      onTap: () {
                        // لما المستخدم يضغط => نبدّل اللغة
                        var languageProvider = Provider.of<LanguageProvider>(context, listen: false);

                        if (languageProvider.isEnglish) {
                          languageProvider.changeAppLanguage(const Locale('ar')); // غيّر للعربي
                        } else {
                          languageProvider.changeAppLanguage(const Locale('en')); // غيّر للإنجليزي
                        }
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            // النص بيتغيّر حسب اللغة الحالية
                            Provider.of<LanguageProvider>(context).isEnglish ? "En" : "ع",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 12.h),
                CustomTabBar(
                  categories: CategoryModel.getCategoriesWithAll(context),
                  selectedBackgroundColor: AppColors.white,
                  unselectedBackgroundColor: Colors.transparent,
                  selectedForegroundColor: AppColors.blue,
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
                category: CategoryModel.getCategories(context)[2],
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
