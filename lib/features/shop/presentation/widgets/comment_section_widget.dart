

import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/core/widgets/custom_text_form_field.dart';

class CommentsSectionWidget extends StatelessWidget {
  const CommentsSectionWidget({
    super.key,
    required this.feedbackController,
  });

  final TextEditingController feedbackController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                labelText: "Type ur FeedBack",
                controller: feedbackController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your feedback';
                  }
                  return null;
                },
                
              ),
            ),
            horizontalSpace(8.0.w),
            SizedBox(
              width: 100.0.w,
              height: 40.0.h,
              child: CustomElevatedButton(
                text: 'Send',
                onPressed: () {
                  // Handle feedback submission logic here
                  String feedback = feedbackController.text;
                  debugPrint('Feedback submitted: $feedback');
                  feedbackController.clear();
                },
              ),
            ),
          ],
        ),
        verticalSpace(16.0.h),
        Text('Comments', style: AppTextStyles.font18BlackSemiBold),
        verticalSpace(8.0.h),
        Text("User1", style: AppTextStyles.font18BlackRegular),
        Text("This is a great product!", style: AppTextStyles.font14BlackRegular),
      ],
   
   
   
    );
  }
}
