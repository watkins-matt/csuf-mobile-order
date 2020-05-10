import 'package:flutter/material.dart';
import 'package:mobile_ordering/cart_cache.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'connection_manager.dart';
import 'order_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  App.prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ConnectionManager>(
        create: (_) => ConnectionManager()),
    ChangeNotifierProvider<CartCache>(create: (_) => CartCache())
  ], child: App()));
}

class App extends StatelessWidget {
  static SharedPreferences prefs;

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
