import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/helper/app_images.dart';
import 'package:market/core/routes/app_routes.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_cached_network_image.dart';
import 'package:market/core/widgets/custom_card.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: CustomCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70.0.r,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70.0.r),
                      child: CustomCachedNetworkImage(
                        imageUrl: AppImages.profileImage,
                        width: 70.0.r * 2,
                        height: 70.0.r * 2,
                      ),
                    ),
                  ),
                ),
                verticalSpace(10.0.h),

                Text(
                  'Mostafa Ibrahim',
                  style: AppTextStyles.font18BlackSemiBold,
                ),
                verticalSpace(5.0.h),
                Text("+20123456789", style: AppTextStyles.font14BlackRegular),
                verticalSpace(5.0.h),
                Text(
                  "mostafa.ibrahim@example.com",
                  style: AppTextStyles.font14BlackRegular,
                ),
                verticalSpace(10.0.h),

                CustomElevatedButton(
                  text: "Edit Profile",
                  onPressed: () {
                    context.push(AppRoutes.editProfileScreen);
                  },
                ),
                verticalSpace(10.0.h),

                CustomElevatedButton(
                  text: "My Orders",
                  onPressed: () {
                    context.push(AppRoutes.myOrdersScreen);
                  },
                ),
                verticalSpace(10.0.h),

                CustomElevatedButton(
                  text: "Logout",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
