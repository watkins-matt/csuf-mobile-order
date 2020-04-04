import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'connection_manager.dart';
import 'generated/cart.pb.dart';
import 'generated/cart.pbgrpc.dart';
import 'generated/menu.pb.dart';

class CartPage extends StatefulWidget {
  static void push(BuildContext context) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) {
              return CartPage();
            },
            maintainState: true,
            settings: RouteSettings(isInitialRoute: true)));
  }

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<MenuItem> items = List<MenuItem>();
  String total = "";

  @override
  void initState() {
    updateCart();
    super.initState();
  }

  void updateCart() async {
    var client = Provider.of<ConnectionManager>(context, listen: false);

    try {
      final result = await client.cart.get(CartSubmitRequest()..clientId = "1");
      setState(() {
        items = result.items;

        total = "\$" + result.total.toStringAsFixed(2);
        if (total.endsWith(".0")) {
          total += "0";
        }
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  void cartItemRemoved(int index) async {
    var client = Provider.of<ConnectionManager>(context, listen: false);

    try {
      final result = await client.cart.remove(CartModifyRequest()
        ..clientId = "1"
        ..item = items[index]);
      setState(() {
        items = result.items;
        total = "\$" + result.total.toStringAsFixed(2);
        if (total.endsWith(".0")) {
          total += "0";
        }
      });
    } catch (exception) {
      print("Error: $exception");
    }
  }

  Widget buildCartItem(BuildContext context, int index) {
    String price = "\$" + items[index].price.toStringAsFixed(2);

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
                padding: EdgeInsets.only(right: 8.0, bottom: 8.0, top: 8.0),
              )),
              FlatButton(
                textTheme: ButtonTextTheme.accent,
                child: Text("Submit Order"),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
