import 'dart:async';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:mobile_ordering/cart_cache.dart';
import 'package:mobile_ordering/main.dart';
import 'package:mobile_ordering/settings_page.dart';
import 'package:provider/provider.dart';

import 'cart_page.dart';
import 'connection_manager.dart';
import 'generated/cart.pb.dart';
import 'generated/cart.pbgrpc.dart';
import 'generated/menu.pb.dart';
import 'generated/menu.pbgrpc.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _scaffold = GlobalKey<ScaffoldState>();
  List<MenuItem> items = <MenuItem>[];
  List<MenuItem> recommendations = <MenuItem>[];
  Timer refresh;

  Future<void> onRefresh(Timer t) async {
    final client = Provider.of<ConnectionManager>(context, listen: false);
    if (!client.connected) {
      final connectionSnack = SnackBar(
        content: Text('Connecting...'),
        duration: Duration(seconds: 3),
      );
      _scaffold.currentState.showSnackBar(connectionSnack);
      await _connect();
    } else {
      final status =
          await client.cart.status(CartSubmitRequest()..clientId = '1');
      if (status.ready) {
        final connectionSnack = SnackBar(
          content: Text('Your order is ready. Please come pick up your order.'),
          duration: Duration(seconds: 3),
        );
        _scaffold.currentState.showSnackBar(connectionSnack);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    refresh = Timer.periodic(Duration(seconds: 15), onRefresh);
    WidgetsBinding.instance.addPostFrameCallback((_) => onRefresh(refresh));
  }

  Future<void> _connect() async {
    String ip = App.prefs.getString('ip');

    var client = Provider.of<ConnectionManager>(context, listen: false);
    // Disconnect from any previous connection
    if (client.connected) {
      await client.disconnect();
    }

    bool connected = await client.connect(ip);

    if (connected) {
      final connectionSnack = SnackBar(
          content: Text('Connected to server.'),
          duration: Duration(seconds: 3));
      _scaffold.currentState.showSnackBar(
        connectionSnack,
      );

      try {
        final result = await client.menu.get(MenuRequest());
        items = result.items;

        final rec = await client.rec
            .getRecommendation(CartSubmitRequest()..clientId = '1');
        recommendations = rec.items;
      } catch (exception) {
        print('Error: $exception');
      }
      setState(() {});
    }
    // Try to connect again after 15 seconds
    else {
      final connectionSnack = SnackBar(
        content: Text('Unable to connect, retrying in 15 seconds.'),
        duration: Duration(seconds: 3),
      );
      _scaffold.currentState.showSnackBar(connectionSnack);
    }
  }

  Future<void> menuItemAdded(int index) async {
    var client = Provider.of<ConnectionManager>(context, listen: false);
    var cart = Provider.of<CartCache>(context, listen: false);

    try {
      cart.add(items[index]);
      await client.cart.add(CartModifyRequest()
        ..clientId = '1'
        ..item = items[index]);
    } catch (exception) {
      print('Error: $exception');
    }
  }

  Widget buildMenuItem(BuildContext context, int index) {
    String price = '\$' + items[index].price.toStringAsFixed(2);
    bool recommended = recommendations.contains(items[index]);
    Widget subtitle = recommended
        ? Text(
            'We recommend this item. ($price)',
            style: TextStyle(
                color: Colors.deepOrange, fontWeight: FontWeight.bold),
          )
        : Text(price);

    Card listViewCard = Card(
        color: Theme.of(context).cardColor,
        child: ListTile(
            title: Text(items[index].name),
            subtitle: subtitle,
            trailing: IconButton(
              icon: Icon(
                Icons.add_circle,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                menuItemAdded(index);
              },
            )));

    return listViewCard;
  }

  Widget _drawer(BuildContext context) {
    return Drawer(
        child: Container(
            child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('Default User'),
        accountEmail: Text('user@example.com'),
      ),
      ListTile(
          leading: const Icon(Icons.refresh),
          title: Text('Reconnect'),
          onTap: () async {
            Navigator.pop(context);
            await _connect();
          }),
      ListTile(
          leading: const Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () async => await SettingsPage.push(context)),
    ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: _drawer(context),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Consumer<CartCache>(builder: (context, cart, child) {
            return Badge(
              animationDuration: Duration(microseconds: 0),
              position: BadgePosition.bottomLeft(bottom: 2, left: 2),
              badgeContent: Text(cart.badgeText),
              showBadge: cart.badgeText.isNotEmpty,
              child: IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: () {
                  CartPage.push(context);
                },
              ),
            );
          }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: ListView.builder(
              itemBuilder: buildMenuItem,
              itemCount: items.length,
              padding: EdgeInsets.only(right: 8, bottom: 8, top: 8),
            ))
          ],
        ),
      ),
    );
  }
}
