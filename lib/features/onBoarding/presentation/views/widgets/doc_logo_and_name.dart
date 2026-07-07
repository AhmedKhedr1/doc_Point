import 'package:doc_point/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        SvgPicture.asset(Assets.logoIcon),
        SizedBox(width: 8.w),
        SvgPicture.asset(Assets.docdoc),
      ],
    );
  }
}
