import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_counter/counter/counter.dart';
import 'package:provider/provider.dart';

import 'counter_widgets_2.dart';

class CounterExample extends StatefulWidget {
  const CounterExample();

  @override
  CounterExampleState createState() => CounterExampleState();
}

class CounterExampleState extends State<CounterExample> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Observer(
                builder: (_) => Text(
                      '${counter.value}',
                      style: const TextStyle(fontSize: 40),
                    )),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text('Page 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterExample2()),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
