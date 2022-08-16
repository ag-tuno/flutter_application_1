
import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/config_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Config Page'),
      ),
      body: BlocProvider(
              create: (_) => ConfigBloc(),
              child: _contents(context),
      ),
    );
  }
}

Widget _contents(context) {
  return DropdownButton<PanelNumber>(
      // value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (PanelNumber? newValue) {
        // TODO: setstateではなくBlocで実現する
//        setState(() {
//          dropdownValue = newValue!;
//        });
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
