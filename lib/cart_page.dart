import 'package:flutter/material.dart';
import 'package:mobile_ordering/cart_cache.dart';
import 'package:provider/provider.dart';

import 'connection_manager.dart';
import 'generated/cart.pb.dart';
import 'generated/cart.pbgrpc.dart';
import 'generated/menu.pb.dart';

class CartPage extends StatefulWidget {
  static Future<void> push(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) {
              return CartPage();
            },
            maintainState: true));
  }

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<MenuItem> items = <MenuItem>[];
  String total = '';

  @override
  void initState() {
    super.initState();
    updateCart();
  }

  Future<void> updateCart() async {
    var client = Provider.of<ConnectionManager>(context, listen: false);

    try {
      final result = await client.cart.get(CartSubmitRequest()..clientId = '1');
      setState(() {
        items = result.items;

        total = 'Total: \$' + result.total.toStringAsFixed(2);
        if (total.endsWith('.0')) {
          total += '0';
        }
      });
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> cartItemRemoved(int index) async {
    var client = Provider.of<ConnectionManager>(context, listen: false);
    var cart = Provider.of<CartCache>(context, listen: false);

    try {
      cart.remove(items[index]);
      final result = await client.cart.remove(CartModifyRequest()
        ..clientId = '1'
        ..item = items[index]);
      setState(() {
        items = result.items;
        total = 'Total: \$' + result.total.toStringAsFixed(2);
        if (total.endsWith('.0')) {
          total += '0';
        }
      });
    } catch (exception) {
      print('Error: $exception');
    }
  }

  Widget buildCartItem(BuildContext context, int index) {
    String price = '\$' + items[index].price.toStringAsFixed(2);

    Card listViewCard = Card(
        color: Theme.of(context).cardColor,
        child: ListTile(
            title: Text(items[index].name),
            subtitle: Text(price),
            trailing: IconButton(
              icon: Icon(
                Icons.remove_circle,
                color: Theme.of(context).errorColor,
              ),
              onPressed: () {
                cartItemRemoved(index);
              },
            )));

    return listViewCard;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(total)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                itemBuilder: buildCartItem,
                itemCount: items.length,
                padding: EdgeInsets.only(right: 8, bottom: 8, top: 8),
              )),
              FlatButton(
                textTheme: ButtonTextTheme.accent,
                onPressed: onSubmitPressed,
                child: Text('Submit Order'),
              )
            ],
          ),
        ));
  }

  Future<void> onSubmitPressed() async {
    var client = Provider.of<ConnectionManager>(context, listen: false);
    if (client.connected) {
      await client.cart.submit(CartSubmitRequest()..clientId = '1');
    }
  }
}
