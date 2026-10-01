import 'package:doc_point/core/theming/app_colors.dart';
import 'package:doc_point/core/theming/text_styles.dart';
import 'package:doc_point/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeTapBar extends StatelessWidget {
  const HomeTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18DarkBlueBold),
            Text('How Are you Today?', style: TextStyles.font12GrayRegular),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.moreLighterGray,
          child: Image.asset(Assets.notification),
        ),
      ],
    );
  }
}
