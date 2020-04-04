import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'connection_manager.dart';
import 'order_page.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider<ConnectionManager>(
          create: (_) => ConnectionManager()),
    ], child: App()));

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Ordering',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrderPage(title: 'Mobile Ordering'),
    );
  }
}
