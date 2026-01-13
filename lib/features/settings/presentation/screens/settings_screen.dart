import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const String name = "/settings";


  const SettingsScreen({super.key});
  @override
  State<SettingsScreen> createState(){
    return _SettingsScreenState();
  }
}

class _SettingsScreenState extends State<SettingsScreen>{
  late bool _toggleLanguage = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.language),
              title: Text(AppLocalizations.of(context)!.changeLanguage),
              trailing: Switch(value: _toggleLanguage, onChanged: (value){
                setState(() {
                  _toggleLanguage = !_toggleLanguage;
                });
              },),
            )
          ],
        ),
      ),
    );
  }

  void _changeLocaleLanguage() {

  }

}