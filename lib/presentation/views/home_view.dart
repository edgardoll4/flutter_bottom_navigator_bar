import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Conteo principal: $conteo'),
          FilledButton.tonal(
            onPressed: () {
              setState(() {
                conteo++;
              });
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
