import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/widgets/custom_app_bar.dart';
import 'package:market/core/widgets/custom_cached_network_image.dart';
import 'package:market/features/shop/data/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(title: 'Product Details'),
      body: Column(
        children: [
            CustomCachedNetworkImage(
              imageUrl: product.imageUrl,
              height: 250.0.h,
              width: double.infinity,
            
            ),
        ],
      ),
    );
  }
}