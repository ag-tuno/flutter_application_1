
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConfigBloc>(
            create: (_) => ConfigBloc(),
            child: _Contents(),
            );
  }
}

class _Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Config Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('select panel number'),
            BlocBuilder<ConfigBloc, PanelNumber>(
              builder: (context, dropdownValue) {
                return DropdownButton<PanelNumber>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (dropdownValue) {
                    context.read<ConfigBloc>().add(SetPanelNumber(dropdownValue));
                  },
                  items: PanelNumber.values.map(  
                    (PanelNumber panelNumber) {
                      return DropdownMenuItem<PanelNumber>(
                        value: panelNumber,
                        child: Text(panelNumber.panelNumber.toString()),
                      );
                    }
                  ).toList(),
                );
              }
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bingo');
                },
              child: const Text('Go bingo'),
            ),
          ]
        )
      )
    );
  }
}
