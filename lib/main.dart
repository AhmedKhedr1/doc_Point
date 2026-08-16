import 'package:doc_point/core/di/dependency_injection.dart';
import 'package:doc_point/core/routing/app_router.dart';
import 'package:doc_point/doc_app.dart';
import 'package:flutter/material.dart';

void main() {  
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
