import 'package:flutter/material.dart';
import 'package:flutter_project/root_page/root_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
    builder: (BuildContext context, widget) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter_ScreenUtil',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
    ),
    home: RootPage(),
    )
    );
  }
}


