import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigator_bar/presentation/screens/home_screen.dart';

import 'config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectColor: 9, selectBrigthness: 1).theme(),
        title: 'Material App',
        home: HomeScreen());
  }
}
