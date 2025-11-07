import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

class CategoryModel  {
  String id;
  String name;
  IconData icon;
  String imagePath;
  CategoryModel({required this.id, required this.name,required this.icon,required this.imagePath});
static List<CategoryModel>getCategoriesWithAll(BuildContext context){
  AppLocalizations appLocalizations = AppLocalizations.of(context)!;
return [
  CategoryModel(id:"0", name:appLocalizations.all, icon:Icons.all_inclusive_rounded, imagePath:AppImages.workShop),
  CategoryModel(id:"1", name:appLocalizations.sports, icon:Icons.sports_football_rounded, imagePath:AppImages.sports),
  CategoryModel(id:"2", name:appLocalizations.birthday, icon:Icons.cake_rounded, imagePath:AppImages.birthday),
  CategoryModel(id:"3", name:appLocalizations.meeting, icon:Icons.laptop_mac_rounded, imagePath:AppImages.meeting),
  CategoryModel(id:"4", name:appLocalizations.gaming, icon:Icons.gamepad_rounded, imagePath:AppImages.gaming),
  CategoryModel(id:"5", name:appLocalizations.eating, icon:Icons.local_pizza_rounded, imagePath:AppImages.eating),
  CategoryModel(id:"6", name:appLocalizations.holiday, icon:Icons.holiday_village_rounded, imagePath:AppImages.holiday),
  CategoryModel(id:"7", name:appLocalizations.exhibition, icon:Icons.water_drop_rounded, imagePath:AppImages.exhabition),
  CategoryModel(id:"8", name:appLocalizations.work_shop, icon:Icons.workspaces_rounded, imagePath:AppImages.workShop),
  CategoryModel(id:"9", name:appLocalizations.book_club, icon:Icons.book_online_rounded, imagePath:AppImages.bookClub),
];
}
  static List<CategoryModel>getCategories(BuildContext context){
    AppLocalizations appLocalizations = AppLocalizations.of(context)!;
    return [
      CategoryModel(id:"1", name:appLocalizations.sports, icon:Icons.sports_football_rounded, imagePath:AppImages.sports),
      CategoryModel(id:"2", name:appLocalizations.birthday, icon:Icons.cake_rounded, imagePath:AppImages.birthday),
      CategoryModel(id:"3", name:appLocalizations.meeting, icon:Icons.laptop_mac_rounded, imagePath:AppImages.meeting),
      CategoryModel(id:"4", name:appLocalizations.gaming, icon:Icons.gamepad_rounded, imagePath:AppImages.gaming),
      CategoryModel(id:"5", name:appLocalizations.eating, icon:Icons.local_pizza_rounded, imagePath:AppImages.eating),
      CategoryModel(id:"6", name:appLocalizations.holiday, icon:Icons.holiday_village_rounded, imagePath:AppImages.holiday),
      CategoryModel(id:"7", name:appLocalizations.exhibition, icon:Icons.water_drop_rounded, imagePath:AppImages.exhabition),
      CategoryModel(id:"8", name:appLocalizations.work_shop, icon:Icons.workspaces_rounded, imagePath:AppImages.workShop),
      CategoryModel(id:"9", name:appLocalizations.book_club, icon:Icons.book_online_rounded, imagePath:AppImages.bookClub),
    ];
  }

}
