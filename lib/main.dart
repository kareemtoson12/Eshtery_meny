import 'package:eshtry_meny/EshtryMeny.dart';
import 'package:eshtry_meny/shared/di/dependency_injection.dart';

import 'package:eshtry_meny/shared/routing/app_routes.dart';
import 'package:flutter/material.dart';

void main() async {
  setUpGetIt();
  runApp(EshtryMeny(
    appRouter: AppRoutes(),
  ));
}
