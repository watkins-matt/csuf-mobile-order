import 'package:flutter/material.dart';

class AddressDialog extends StatefulWidget {
  final Function _callback;
  AddressDialog(this._callback);

  static Future<String> show(BuildContext context, Function callback) async {
    return showDialog(
        context: context, builder: (context) => AddressDialog(callback));
  }

  @override
  _AddressDialogState createState() => _AddressDialogState();
}

class _AddressDialogState extends State<AddressDialog> {
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Enter IP Address:'),
        content: TextField(
          controller: _controller,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(context).pop();
              widget._callback(_controller.text);
            },
          ),
        ]);
  }
}
