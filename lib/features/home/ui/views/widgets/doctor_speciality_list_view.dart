import 'package:doc_point/core/utils/assets.dart';
import 'package:doc_point/features/home/ui/views/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});
  final List<String> specialityList = const [
    Assets.generalImage,
    Assets.neurologicImage,
    Assets.pediatricImage,
    Assets.radiologyImage,
  ];
  final List<String> specialityTitle = const [
    'General',
    'Neurologic',
    'Pediatric',
    'Radiology',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
      child: SizedBox(
        height: 86.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specialityList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 32.w),
              child: DoctorSpecialityListViewItem(
                imagePath: specialityList[index],
                title: specialityTitle[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
