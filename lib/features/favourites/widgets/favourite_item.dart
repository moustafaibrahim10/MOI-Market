import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/helper/app_constants.dart';
import 'package:market/core/helper/app_images.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_cached_network_image.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius),
            child: CustomCachedNetworkImage(
              imageUrl: AppImages.productImage,
              width: 70.0.w,
              height: 70.0.h,
            ),
          ),
          horizontalSpace(10.0.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Product Name', style: AppTextStyles.font18BlackSemiBold),
              verticalSpace(5.0.h),
              Text(
                'Product Description',
                style: AppTextStyles.font14BlackRegular,
              ),
              verticalSpace(5.0.h),
              Text('\$99.99', style: AppTextStyles.font18PrimarySemiBold),
            ],
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                onPressed: () {
                  // Handle remove from favourites action
                },
                icon: Icon(
                  Icons.favorite,
                  color: AppColors.redColor,
                  size: 30.0.sp,
                ),
              ),
              verticalSpace(5.0.h),
              SizedBox(
                width: 100.0.w,
                child: CustomElevatedButton(
                  text:"Buy Now",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
