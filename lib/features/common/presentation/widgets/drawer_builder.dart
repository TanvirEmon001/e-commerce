import 'package:e_commerce/features/settings/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
class DrawerBuilder extends StatefulWidget {
  const DrawerBuilder({
    super.key,
  });

  @override
  State<DrawerBuilder> createState(){
    return _DrawerBuilderState();
  }

}

class _DrawerBuilderState extends State<DrawerBuilder>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(
                maxRadius: 50,
              ),
              Text("Guest User")
            ],
          )),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: _settingOnTap,
          )
        ],
      ),
    );
  }
  void _settingOnTap() {
    Navigator.pop(context);
    Navigator.pushNamed(context, SettingsScreen.name);
  }
}