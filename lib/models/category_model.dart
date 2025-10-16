import 'package:evently_app/core/resourses/assets_manager.dart';
import 'package:flutter/material.dart';

class CategoryModel  {
  String id;
  String name;
  IconData icon;
  String imagePath;
  CategoryModel({required this.id, required this.name,required this.icon,required this.imagePath});

 static List<CategoryModel> categoryWithAll=[
    CategoryModel(id:"0", name:"All", icon:Icons.all_inclusive_rounded, imagePath:AppImages.workShop),
    CategoryModel(id:"1", name:"Sports", icon:Icons.sports_football_rounded, imagePath:AppImages.sports),
    CategoryModel(id:"2", name:"Birthday", icon:Icons.cake_rounded, imagePath:AppImages.birthday),
    CategoryModel(id:"3", name:"Meeting", icon:Icons.laptop_mac_rounded, imagePath:AppImages.meeting),
    CategoryModel(id:"4", name:"Gaming", icon:Icons.gamepad_rounded, imagePath:AppImages.gaming),
    CategoryModel(id:"5", name:"Eating", icon:Icons.local_pizza_rounded, imagePath:AppImages.eating),
    CategoryModel(id:"6", name:"Holiday", icon:Icons.holiday_village_rounded, imagePath:AppImages.holiday),
    CategoryModel(id:"7", name:"Exhibition", icon:Icons.water_drop_rounded, imagePath:AppImages.exhabition),
    CategoryModel(id:"8", name:"Workshop", icon:Icons.workspaces_rounded, imagePath:AppImages.workShop),
    CategoryModel(id:"9", name:"Book Club", icon:Icons.book_online_rounded, imagePath:AppImages.bookClub),
  ];
 static List<CategoryModel> categories=[
   CategoryModel(id:"0", name:"All", icon:Icons.all_inclusive_rounded, imagePath:AppImages.workShop),
   CategoryModel(id:"1", name:"Sports", icon:Icons.sports_football_rounded, imagePath:AppImages.sports),
   CategoryModel(id:"2", name:"Birthday", icon:Icons.cake_rounded, imagePath:AppImages.birthday),
   CategoryModel(id:"3", name:"Meeting", icon:Icons.laptop_mac_rounded, imagePath:AppImages.meeting),
   CategoryModel(id:"4", name:"Gaming", icon:Icons.gamepad_rounded, imagePath:AppImages.gaming),
   CategoryModel(id:"5", name:"Eating", icon:Icons.local_pizza_rounded, imagePath:AppImages.eating),
   CategoryModel(id:"6", name:"Holiday", icon:Icons.holiday_village_rounded, imagePath:AppImages.holiday),
   CategoryModel(id:"7", name:"Exhibition", icon:Icons.water_drop_rounded, imagePath:AppImages.exhabition),
   CategoryModel(id:"8", name:"Workshop", icon:Icons.workspaces_rounded, imagePath:AppImages.workShop),
   CategoryModel(id:"9", name:"Book Club", icon:Icons.book_online_rounded, imagePath:AppImages.bookClub),
  ];
}
