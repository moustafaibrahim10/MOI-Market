import 'package:flutter/material.dart';
import 'package:market/core/helper/app_constants.dart';
import 'package:market/core/theme/app_colors.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  bool visible = false;
  bool obscureText;
  final bool readOnly;

   CustomTextFormField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.validator,
    this.visible = false,
    this.obscureText = false,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      readOnly: readOnly,
      decoration: InputDecoration(
        
        suffixIcon: visible
            ? IconButton(
                onPressed: () {
                  // Toggle password visibility
                  obscureText = !obscureText;
                },
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.borderRadius,
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.kBordersideColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.borderRadius,
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.borderRadius,
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.kBordersideColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.borderRadius,
          ),
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.kBordersideColor,
          ),
      ),
      ),
      validator: validator,
    );
  }
}
