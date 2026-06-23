import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/spacing.dart';
import 'package:market/features/shop/data/models/mock_data.dart';
import 'package:market/features/shop/presentation/widgets/product_item.dart';

class ProductHorizontalList extends StatelessWidget {
  const ProductHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.0.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductItem(
            productModel: dummyProducts[index],
          );
        },
        separatorBuilder: (context, index) {
          return horizontalSpace(10.0.h);
        },
        itemCount: 5,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
