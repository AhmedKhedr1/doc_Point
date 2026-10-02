import 'package:doc_point/core/helper/spacing.dart';
import 'package:doc_point/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:doc_point/features/home/ui/views/widgets/doctors_list_view.dart';
import 'package:doc_point/features/home/ui/views/widgets/title_with_see_all.dart';
import 'package:doc_point/features/home/ui/views/widgets/doctors_blue_container.dart';
import 'package:doc_point/features/home/ui/views/widgets/home_tap_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTapBar(),
              DoctorsBlueContainer(),
              verticalSpace(18.h),
              TitleWithSeeAll(title: 'Doctor Speciality'),
              DoctorSpecialityListView(),
              verticalSpace(10.h),
              TitleWithSeeAll(title: 'Recommendation Doctor'),
              verticalSpace(12.h),
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
