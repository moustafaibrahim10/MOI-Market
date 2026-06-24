import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:market/core/theme/app_text_styles.dart';
import 'package:market/core/theme/spacing.dart';

class RatingSectionWidget extends StatelessWidget {
  const RatingSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Rating', style: AppTextStyles.font18BlackSemiBold),
        verticalSpace(8.0.h),
        RatingBar.builder(
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) =>
              Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (rating) {
            debugPrint(rating.toString());
          },
        ),
      ],
    );
  }
}
