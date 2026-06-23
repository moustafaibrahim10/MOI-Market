import 'package:flutter/material.dart';
import 'package:market/core/helper/app_constants.dart';
import 'package:market/core/theme/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.borderRadius),
        side: BorderSide(color: AppColors.kBordersideColor),
      ),
      child: Padding(padding: const EdgeInsets.all(24.0), child: child),
    );
  }
}
