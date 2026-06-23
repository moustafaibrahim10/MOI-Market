import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Popular Categories', style: AppTextStyles.font18BlackBold),
        verticalSpace(5.0.h),
        SizedBox(
          height: 80.0.h,
          child: ListView.separated(
            itemBuilder: (context, index) {
              return CategoryItem(
                category: categories[index],
              );
            },
            separatorBuilder: (context, index) {
              return horizontalSpace(10.0.w);
            },
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
          shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0.r,
          backgroundColor: AppColors.kPrimaryColor,
          child: Icon(
            category.icon,
            color: AppColors.kWhiteColor,
            size: 40.0.r,
          ),
        ),
        verticalSpace(5.0.h),
        Text(category.name, style: AppTextStyles.font14BlackMedium),
      ],
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}
List<Category> categories = [
  Category(name: 'Laptops', icon: Icons.laptop),
  Category(name: 'Smartphones', icon: Icons.phone_android),
  Category(name: 'Computers', icon: Icons.computer),
  Category(name: 'Headphones', icon: Icons.headphones),
  Category(name: 'Cameras', icon: Icons.camera_alt),
  Category(name: 'Watches', icon: Icons.watch),
  Category(name: 'Gaming', icon: Icons.videogame_asset),
  Category(name: 'Home Appliances', icon: Icons.kitchen),
];
