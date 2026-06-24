import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/helper/app_images.dart';
import 'package:market/core/routes/app_routes.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Account',
          style: AppTextStyles.font18BlackSemiBold,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    height: 100.h,
                    width: double.infinity,
                  ),
                  verticalSpace(10.h),
                  Text(
                    'Please fill in the details to continue.',
                    style: AppTextStyles.font18BlackRegular,
                  ),
                  verticalSpace(20.h),
                  CustomTextFormField(
                    labelText: "Name",
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(10.h),
                  CustomTextFormField(
                    labelText: "Email",
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(10.h),
                  CustomTextFormField(
                    labelText: "Password",
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(10.h),
                  CustomTextFormField(
                    labelText: "Confirm Password",
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(20.h),
                  CustomElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.push(AppRoutes.login);
                      }
                    },
                    text:'Register',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
