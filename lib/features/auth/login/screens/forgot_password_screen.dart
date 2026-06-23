import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/helper/app_images.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_card.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            key: _formKey,
            children: [
              Image.asset(AppImages.appLogo),
              verticalSpace(20.h),
              Text('Forgot Password', style: AppTextStyles.font24BlackSemiBold),
              verticalSpace(10.h),
              Text(
                'Enter your email to reset your password.',
                style: AppTextStyles.font18BlackRegular,
              ),
              verticalSpace(20.h),
              CustomCard(
                child: Column(
                  children: [
                    CustomTextFormVield(
                      controller: emailController,
                      labelText: 'Email',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    verticalSpace(20.h),
                    CustomElevatedButton(
                      text: 'Send Reset Link',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle password reset logic here
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
