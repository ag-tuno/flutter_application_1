import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bingo');
                },
              child: const Text('Go bingo'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/config');
                },
              child: const Text('Go config'),
            ),
          ],
        ),
      ),
    );
  }
}
