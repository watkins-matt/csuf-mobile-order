import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_ordering/address_dialog.dart';
import 'package:mobile_ordering/main.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  static Future<void> push(BuildContext context) async {
    Navigator.pop(context);
    await Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(body: SettingsPage());
      },
    ));
  }

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String currentIp = '';

  @override
  void initState() {
    final prefs = App.prefs;
    if (prefs.containsKey('ip')) {
      setState(() {
        currentIp = prefs.getString('ip');
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: SettingsList(sections: [
          SettingsSection(
            title: 'Debug',
            tiles: [
              SettingsTile(
                  title: 'Set Test Server Address',
                  subtitle: currentIp,
                  onTap: () async {
                    currentIp = await AddressDialog.show(context);
                    await App.prefs.setString('ip', currentIp);
                    setState(() {});
                  })
            ],
          ),
        ]));
  }
}
