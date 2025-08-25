import 'package:flutter/material.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit counter'),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(
        child: const Text('Counter value: XXXXX'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1', //indicamos boton por defecto entre scaffolds
            child: Text('+3'),
            onPressed: () => {}),
            const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '1', //indicamos boton por defecto entre scaffolds
            child: Text('+2'),
            onPressed: () => {}),
            const SizedBox(height: 15),
          FloatingActionButton(
            heroTag: '1', //indicamos boton por defecto entre scaffolds
            child: Text('+1'),
            onPressed: () => {}),
        ],
      ),
    );
  }
}