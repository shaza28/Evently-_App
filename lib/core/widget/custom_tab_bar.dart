import 'package:flutter/material.dart';

import '../../feature/main_layout/home/custom_tab_item.dart';
import '../../models/category_model.dart';
import '../resourses/colors_manager.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key,
      required this.categories,
      required this.selectedBackgroundColor,
      required this.unselectedBackgroundColor,
      required this.selectedForegroundColor,
      required this.unselectedForegroundColor,
      this.onCategoryItemClicked});
  final List<CategoryModel> categories;
  final Color selectedBackgroundColor;
  final Color unselectedBackgroundColor;
  final Color selectedForegroundColor;
  final Color unselectedForegroundColor;
  final void Function(CategoryModel category)? onCategoryItemClicked;
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categories.length,
      child: TabBar(
        padding: EdgeInsets.zero,
        onTap: (index) {
          widget.onCategoryItemClicked?.call(widget.categories[index]);
          setState(() {
            selectedIndex = index;
          });
        },
        isScrollable: true,
        indicatorColor: Colors.transparent,
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.white.withOpacity(0.6),
        tabs: widget.categories
            .map(
              (category) => CustomTabItem(
                category: category,
                selectedBackgroundColor:widget.selectedBackgroundColor,
                selectedForegroundColor: widget.selectedForegroundColor,
                unselectedBackgroundColor: widget.unselectedBackgroundColor,
                unselectedForegroundColor: widget.unselectedForegroundColor,
                isSelected:
                    selectedIndex == widget.categories.indexOf(category),
              ),
            )
            .toList(),
      ),
    );
  }
}
