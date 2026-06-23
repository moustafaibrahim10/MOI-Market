import 'package:flutter/material.dart';
import 'package:market/core/helper/app_constants.dart';
import 'package:market/core/theme/app_colors.dart';

// ignore: must_be_immutable
class CustomSearchBar extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final VoidCallback? ontap;
  final bool readOnly;

  const CustomSearchBar({
    super.key,
    required this.labelText,
    required this.controller,
    this.readOnly = false,
    this.onChanged,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      readOnly: readOnly,
      decoration: InputDecoration(
        suffixIcon: Container(
  margin: const EdgeInsets.all(4),
  decoration: BoxDecoration(
    color: AppColors.kPrimaryColor, 
    borderRadius: BorderRadius.circular(AppConstants.borderRadius),
  ),
  child: IconButton(
    onPressed: ontap,
    icon: const Icon(
      Icons.search,
      size: 25,
      color: AppColors.kWhiteColor, // اللون الأبيض الصريح
    ),
  ),
), labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(width: 1.0, color: AppColors.kBordersideColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(width: 1.0, color: AppColors.kPrimaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(width: 1.0, color: AppColors.kBordersideColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          borderSide: BorderSide(width: 1.0, color: AppColors.kBordersideColor),
        ),
      ),
    );
  }
}
