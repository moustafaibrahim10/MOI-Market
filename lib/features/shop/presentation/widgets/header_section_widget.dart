import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/features/shop/data/models/product_model.dart';

class HeaderSectionWidget extends StatelessWidget {
  const HeaderSectionWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
              style: AppTextStyles.font20BlackSemiBold,
            ),
            SizedBox(height: 8.0.h),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: AppTextStyles.font18BlackBold,
            ),
            SizedBox(height: 8.0.h),
            Text(
              'Discount: ${product.discount}%',
              style: AppTextStyles.font14BlackRegular,
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            IconButton(
              onPressed: () {
                // Handle favorite button press
              },
              icon: Icon(
                Icons.favorite_border,
                color: AppColors.kPrimaryColor,
                size: 30.0.r,
              ),
            ),
            verticalSpace(8.0.h),
            Row(
              children: [
                Text(
                  '3.5',
                  style: AppTextStyles.font14BlackRegular,
                ),
                IconButton(
                  onPressed: () {
                    // Handle add to cart button press
                  },
                  icon: Icon(
                    Icons.star,
                    color: AppColors.kAmberColor,
                    size: 30.0.r,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
