
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/features/shop/data/models/product_model.dart';

class ProductDescriptionSectionWidget extends StatelessWidget {
  const ProductDescriptionSectionWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Product Description',
          style: AppTextStyles.font18BlackSemiBold,
        ),
        verticalSpace(8.0.h),
        Text(
          product.description,
          style: AppTextStyles.font14BlackRegular,
        ),
      ],
    );
  }
}
