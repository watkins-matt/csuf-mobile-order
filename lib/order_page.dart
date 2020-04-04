import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'address_dialog.dart';
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
  List<MenuItem> items = List<MenuItem>();
  String cartBadge = "";

  void _connect() async {
    const String defaultIp = "10.10.10.22";
    String ipAddress = defaultIp;

    await AddressDialog.show(context, (result) {
      ipAddress = result;
    });

    var client = Provider.of<ConnectionManager>(context, listen: false);
    // Disconnect from any previous connection
    if (client.connected) {
      client.disconnect();
    }
    client.connect(ipAddress);

    try {
      final result = await client.menu.get(MenuRequest());
      items = result.items;
    } catch (exception) {
      print("Error: $exception");
    }
    setState(() {});
  }

  void menuItemAdded(int index) async {
    var client = Provider.of<ConnectionManager>(context, listen: false);
    try {
      final result = await client.cart.add(CartModifyRequest()
        ..clientId = "1"
        ..item = items[index]);

      setState(() {
        cartBadge =
            result.items.length > 0 ? result.items.length.toString() : "";
      });
    } catch (exception) {
      print("Error: $exception");
    }
  }

  Widget buildMenuItem(BuildContext context, int index) {
    String price = "\$" + items[index].price.toStringAsFixed(2);

    Card listViewCard = Card(
        color: Theme.of(context).cardColor,
        child: ListTile(
            title: Text(items[index].name),
            subtitle: Text(price),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Badge(
            position: BadgePosition.bottomLeft(bottom: 2, left: 2),
            badgeContent: Text(cartBadge),
            showBadge: cartBadge.isNotEmpty,
            child: IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {
                CartPage.push(context);
              },
            ),
          )
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
              padding: EdgeInsets.only(right: 8.0, bottom: 8.0, top: 8.0),
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _connect,
        tooltip: 'Connect',
        child: Icon(Icons.cached),
      ),
    );
  }
}
