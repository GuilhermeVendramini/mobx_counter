import 'package:flutter/material.dart';
import 'package:mobx_counter/counter/counter.dart';
import 'package:provider/provider.dart';

import 'counter/counter_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) => MultiProvider(
      providers: [
        Provider<Counter>(builder: (_) => Counter()),
      ],
      child: MaterialApp(
        home: CounterExample(),
      ),
  );
}

