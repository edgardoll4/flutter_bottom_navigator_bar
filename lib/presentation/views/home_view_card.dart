import 'package:flutter/material.dart';

import '../../widgets/backround.dart';
import '../../widgets/card_table.dart';
import '../../widgets/page_title.dart';

class HomeViewCard extends StatelessWidget {
  const HomeViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        elevation: 15,
      ),
      body: Stack(
        children: [
          // Background
          Background(),
          // Home Body
          const _HomeBody()
        ],
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Title
          PageTitle(),
          // Card table
          const CardTable(),
        ],
      ),
    );
  }
}
