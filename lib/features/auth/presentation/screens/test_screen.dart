import 'package:e_commerce/features/common/presentation/widgets/language_selector.dart';
import 'package:e_commerce/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  static const String name = "/test";
  const TestScreen({super.key});

  @override
  State<TestScreen> createState(){
    return _TestScreenState();
  }
}

class _TestScreenState extends State<TestScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Localization"),
      ),
      body: Row(
        children: [
          Text(AppLocalizations.of(context)!.hello),
          LanguageSelector()
        ],
      ),
    );
  }


}