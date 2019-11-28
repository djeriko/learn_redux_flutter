import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:learn_redux_flutter/redux/stores/counter_state.dart';
import 'package:learn_redux_flutter/pages/counter_page.dart';
import 'package:learn_redux_flutter/redux/reducers/counter_reducer.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<CounterState>(
    counterStateReducer,
    initialState: CounterState(),
  );
  runApp(
    MyApp(
      store: store,
    ),
  );
}

class MyApp extends StatelessWidget {
  final Store store;
  const MyApp({Key key, @required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CounterState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CounterPage(),
      ),
    );
  }
}
