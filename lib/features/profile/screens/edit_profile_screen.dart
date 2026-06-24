import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_app_bar.dart';
import 'package:market/core/widgets/custom_card.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Profile'),
      body: CustomCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextFormField(
              readOnly: true,
              labelText: "Name",
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            verticalSpace(20.0.h),

            CustomTextFormField(
              readOnly: true,
              labelText: "Email",
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            verticalSpace(20.0.h),

            CustomTextFormField(
              readOnly: true,
              labelText: "Phone",
              controller: phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            verticalSpace(20.0.h),
            CustomElevatedButton(
              text: 'Save Changes',
              onPressed: () {
                // Handle save changes logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}

