import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_counter/counter/counter.dart';
import 'package:provider/provider.dart';

class CounterExample2 extends StatefulWidget {
  const CounterExample2();

  @override
  CounterExampleState2 createState() => CounterExampleState2();
}

class CounterExampleState2 extends State<CounterExample2> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('MobX Counter 2'),
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
              child: Text('Previous page'),
              onPressed: () {
                Navigator.pop(context);
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
