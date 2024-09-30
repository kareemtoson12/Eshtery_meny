import 'package:eshtry_meny/shared/routing/app_routes.dart';
import 'package:eshtry_meny/shared/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EshtryMeny extends StatelessWidget {
  final AppRoutes appRouter;
  const EshtryMeny({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        onGenerateRoute: appRouter.gnerateRoute,
        initialRoute: Routes.cart,
      ),
    );
  }
}
