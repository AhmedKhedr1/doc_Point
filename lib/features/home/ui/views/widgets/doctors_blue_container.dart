import 'package:doc_point/core/helper/spacing.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          Container(
            height: 167.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage(Assets.homebluepattern),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteMedium,
                ),
                verticalSpace(16.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(109.w, 38.h),
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.r),
                    ),
                  ),
                  child: Text(
                    'Find Nearby',
                    style: TextStyles.font12BlueRegular,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.w,
            child: Image.asset(
              Assets.homedoctorimage,
              height: 197.h,
              width: 138.w,
            ),
          ),
        ],
      ),
    );
  }
}
