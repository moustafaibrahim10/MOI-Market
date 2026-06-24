import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/core/widgets/custom_app_bar.dart';
import 'package:market/core/widgets/custom_cached_network_image.dart';
import 'package:market/core/widgets/custom_elevated_button.dart';
import 'package:market/features/shop/data/models/product_model.dart';
import 'package:market/features/shop/presentation/widgets/comment_section_widget.dart';
import 'package:market/features/shop/presentation/widgets/header_section_widget.dart';
import 'package:market/features/shop/presentation/widgets/product_description_section_widget.dart';
import 'package:market/features/shop/presentation/widgets/rating_section_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final TextEditingController feedbackController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(title: 'Product Details'),
      body: ListView(
        children: [
          CustomCachedNetworkImage(
            imageUrl: product.imageUrl,
            height: 250.0.h,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                HeaderSectionWidget(product: product),
                verticalSpace(16.0.h),
                ProductDescriptionSectionWidget(product: product),
                verticalSpace(16.0.h),
                RatingSectionWidget(),
                verticalSpace(16.0.h),
                CustomElevatedButton(text: 'Add to Cart', onPressed: () {}),
                verticalSpace(16.0.h),

                CommentsSectionWidget(feedbackController: feedbackController),
                verticalSpace(16.0.h),
             
              ],
            ),
          ),
        ],
      ),
    );
  }
}

