import 'package:doc_point/core/helper/spacing.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/core/utils/assets.dart';
import 'package:doc_point/features/home/ui/views/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 126.h,
      child: Row(
        children: [
          Image.asset(Assets.doctorImage2, width: 110.w, height: 110.h),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dr. Randy Wigham',
                style: TextStyles.font16WhiteSemiBold.copyWith(
                  color: Color(0xff242424),
                ),
              ),
              verticalSpace(8.h),
              Text(
                'General | RSUD Gatot Subroto',
                style: TextStyles.font12GrayMedium,
              ),
              verticalSpace(6.h),
              const RatingBar(),
            ],
          ),
        ],
      ),
    );
  }
}
