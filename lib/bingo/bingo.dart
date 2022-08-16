
import 'package:flutter/material.dart';
import './bingo_bloc.dart';

class BingoPage extends StatelessWidget {
  const BingoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bingo Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bingo');
                },
              child: const Text('hoge'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/config');
                },
              child: const Text('fuga'),
            ),
          ],
        ),
      ),
    );
  }
}
