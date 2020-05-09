import 'package:flutter/material.dart';
import 'package:mobile_ordering/main.dart';

class AddressDialog extends StatefulWidget {
  AddressDialog();

  static Future<String> show(BuildContext context) async {
    return showDialog(context: context, builder: (context) => AddressDialog());
  }

  @override
  _AddressDialogState createState() => _AddressDialogState();
}

class _AddressDialogState extends State<AddressDialog> {
  final _controller = TextEditingController();
  String _previousIp = '';

  @override
  void initState() {
    super.initState();

    if (App.prefs.containsKey('ip')) {
      _previousIp = App.prefs.getString('ip');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Enter IP Address:'),
        content: TextField(
          controller: _controller,
          decoration: InputDecoration(hintText: _previousIp),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).pop(_previousIp),
            child: Text('Cancel'),
          ),
          FlatButton(
            onPressed: () {
              String ip = _controller.text;
              if (ip.isEmpty) {
                ip = _previousIp;
              }

              Navigator.of(context).pop(ip);
            },
            child: Text('Okay'),
          ),
        ]);
  }
}
