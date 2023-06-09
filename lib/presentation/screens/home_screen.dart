import 'package:flutter/material.dart';

import '../views/basic_design_view.dart';
import '../views/exit_view.dart';
import '../views/home_view.dart';
import '../views/home_view_card.dart';
import 'scroll_design.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final List<Widget> selectScreen = [
      HomeView(),
      BasicDesignView(),
      ScrollScreen(),
      HomeViewCard(),
      ExitView()
    ];
    return Scaffold(
      appBar: AppBar(
        // excludeHeaderSemantics: true,
        title: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.android),
            Container(
              width: 15,
            ),
            Text('APP')
          ],
        ),
      ),
      body: IndexedStack(
        index: selectIndex,
        children: selectScreen,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: selectIndex,
          onTap: (value) {
            setState(() {
              selectIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home_work),
                label: 'Home',
                backgroundColor: colors.primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                activeIcon: Icon(Icons.shape_line),
                label: 'Design',
                backgroundColor: colors.secondary),
            BottomNavigationBarItem(
                icon: Icon(Icons.arrow_downward),
                activeIcon: Icon(Icons.recycling),
                label: 'Page Scroll',
                backgroundColor: colors.error),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                activeIcon: Icon(Icons.settings_accessibility),
                label: 'Setting',
                backgroundColor: colors.primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app),
                activeIcon: Icon(Icons.cancel),
                label: 'Exti',
                backgroundColor: colors.tertiary),
          ]),
    );
  }
}
