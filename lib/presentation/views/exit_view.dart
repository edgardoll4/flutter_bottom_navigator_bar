import 'package:flutter/material.dart';

class ExitView extends StatefulWidget {
  const ExitView({super.key});

  @override
  State<ExitView> createState() => _ExitView();
}

class _ExitView extends State<ExitView> {
  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Conteo final: $conteo'),
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
