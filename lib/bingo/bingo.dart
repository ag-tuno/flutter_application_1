import 'package:flutter/material.dart';
import 'package:flutter_application_1/bingo/bingo_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class BingoPage extends StatelessWidget {
  const BingoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<BingoBloc>(
          create: (BuildContext context) => BingoBloc(),
        ),
      ],
      child: _Contents(),
    );
  }
}

class _Contents extends StatelessWidget {
  List<Panel> panels = [];
  _Contents() {
    for(int i = 0; i < 25; i++) {
      panels.add(Panel());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bingo Page')),
      body: BlocBuilder<BingoBloc, Panel>(
        builder: (context, state) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5, //カラム数
            ),
            itemCount: 25, //要素数
            itemBuilder: (context, index) {
              //要素を戻り値で返す
              return GestureDetector(
                child: GridTile(
                  child: Container(
                    color: index.isEven ? Colors.blue : Colors.yellow,
                  )
                ),
                onTap: () {
                  context.read<BingoBloc>().add(TapPanel());
                },
              );
            },
            shrinkWrap: true,
          );

          // return OutlinedButton(
          //   onPressed: () {
          //     debugPrint('Received click');
          //   },
          //   child: const Text('100'),
          // );

          // return GestureDetector(
          //   child: Container(
          //     child: const Text('100'),
          //   ),
          //   onTap: () {
          //     debugPrint('Received click');
          //   }
          // );
        }
      ),
    );
  }
}
