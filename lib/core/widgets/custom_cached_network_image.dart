import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:market/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: AppColors.kGreyColor,
        highlightColor: AppColors.kLightGreyColor,
        child: Container(
          width: double.infinity,
          height: height,
          color: AppColors.kLightGreyColor,
        ),
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
