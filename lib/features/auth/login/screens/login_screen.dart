import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/helper/app_images.dart';
import 'package:market/core/routes/app_routes.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_card.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(AppImages.appLogo),
                Text(
                  'Welcome to the MOI Market App!',
                  style: AppTextStyles.font18BlackSemiBold,
                ),
                verticalSpace(10.h),
                Text(
                  'Please log in to continue.',
                  style: AppTextStyles.font18BlackRegular,
                ),
                verticalSpace(20.h),

                CustomCard(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextFormVield(
                          labelText: 'Email',
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email.';
                            }
                            // Simple email validation
                            if (!RegExp(
                              r'^[^@]+@[^@]+\.[^@]+',
                            ).hasMatch(value)) {
                              return 'Please enter a valid email address.';
                            }
                            return null;
                          },
                        ),
                        verticalSpace(20.h),
                        CustomTextFormVield(
                          visible: true,
                          obscureText: true,
                          labelText: 'Password',
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password.';
                            }
                            if (value.length < 6) {
                              return 'Password must be at least 6 characters long.';
                            }
                            return null;
                          },
                        ),
                        verticalSpace(5.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              context.push(AppRoutes.forgotPassword);
                            },
                            child: Text(
                              "Forgot Password?",
                              style: AppTextStyles.font14BlackRegular.copyWith(
                                color: AppColors.kPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                        verticalSpace(20.h),
                        CustomElevatedButton(
                          text:'Login',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.go(AppRoutes.mainScreen);
                            }
                          },
                        ),
                        verticalSpace(10.h),
                       Text(
                          '-------- Or login with --------',
                          style: AppTextStyles.font14BlackRegular,
                        ),
                        verticalSpace(10.h),
                        InkWell(
                          onTap: () {
                            // Handle Google login action
                          },
                          child: SvgPicture.asset(
                            AppImages.googleIcon,
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: AppTextStyles.font14BlackRegular,
                            ),
                            TextButton(
                              onPressed: () {
                                context.push(AppRoutes.register);
                              },
                              child: Text(
                                "Sign Up",
                                style: AppTextStyles.font14BlackRegular
                                    .copyWith(color: AppColors.kPrimaryColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
