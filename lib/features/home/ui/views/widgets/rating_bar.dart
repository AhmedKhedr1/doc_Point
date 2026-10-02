
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.ratingIcon, width: 16.w, height: 16.h),
        Text(' 4.8 (4,279 reviews)', style: TextStyles.font12GrayRegular),
      ],
    );
  }
}
