import 'package:flutter/material.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new,color: AppColors.kWhiteColor,),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(title, style: AppTextStyles.font18WhiteSemiBold),
      centerTitle: true,
      backgroundColor: AppColors.kPrimaryColor,

    );
  }
}
