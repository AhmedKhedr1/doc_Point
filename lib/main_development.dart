import 'package:doc_point/core/di/dependency_injection.dart';
import 'package:doc_point/core/routing/app_router.dart';
import 'package:doc_point/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  setupGetIt();
  // to fix .sp font bug in flutter_screenutil 
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
