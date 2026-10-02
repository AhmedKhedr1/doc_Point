
import 'package:doc_point/core/helper/spacing.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({super.key, required this.imagePath, required this.title});
  final String imagePath, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56.w,
          height: 56.h,
          padding: EdgeInsets.all(14.r),
          decoration: const BoxDecoration(
            color: Color(0xFFF4F8FF),
            shape: BoxShape.circle,
          ),
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
        verticalSpace(10.h),
        Text(title, style: TextStyles.font12DarkBlueRegular),
      ],
    );
  }
}
