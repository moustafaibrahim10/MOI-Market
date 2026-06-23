import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:market/core/helper/app_constants.dart';
import 'package:market/core/routes/app_routes.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_cached_network_image.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/features/shop/data/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  const ProductItem({super.key, required this.productModel});


  @override
  Widget build(BuildContext context) {
      final cardWidth = MediaQuery.of(context).size.width * 0.75;

    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.productDetailsScreen, extra: productModel);
      },
      child: SizedBox(
        width: cardWidth,
        child: Card(
          color: AppColors.kWhiteColor,
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  CustomCachedNetworkImage(
                    imageUrl: productModel.imageUrl,
                    width: double.infinity,
                    height: 150.0.h,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90.0.w,
                    height: 30.0.h,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppConstants.borderRadius),
                        topLeft: Radius.circular(AppConstants.borderRadius),
                        topRight: Radius.circular(AppConstants.borderRadius),
                      ),
                    ),
                    child: Text('${productModel.discount}% OFF', style: AppTextStyles.font14WhiteMedium),
                  ),
                ],
              ),
              verticalSpace(8.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productModel.name,
                          style: AppTextStyles.font18BlackSemiBold,
                        ),
                        IconButton(
                          onPressed: () {
                            // Handle favorite button press
                          },
                          icon: Icon(
                            Icons.favorite_border,
                            color: AppColors.kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('\$${productModel.price.toStringAsFixed(2)}', style: AppTextStyles.font18BlackBold),
                            Text(
                              '\$${productModel.oldPrice.toStringAsFixed(2)}',
                              style: AppTextStyles.font14BlackRegular.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 120.0.w,
                          child: CustomElevatedButton(
                            onPressed: () {},
                            text: 'Add to Cart',
                          ),
                        ),
                      ],
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

