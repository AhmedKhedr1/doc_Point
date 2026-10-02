import 'package:doc_point/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TitleWithSeeAll extends StatelessWidget {
  const TitleWithSeeAll({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyles.font18DarkBlueSemiBold),
        Spacer(),
        Text('See All', style: TextStyles.font12BlueRegular),
      ],
    );
  }
}
