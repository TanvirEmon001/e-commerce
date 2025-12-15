import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleLanguageProvider extends ChangeNotifier {
  final String _localeKey = "locale";
  Locale _currentLocale = Locale("en");

  Locale get currentLocale => _currentLocale;

  Future<void> loadInitialLanguage() async {
    Locale locale = await _getLocale();
    _currentLocale = locale;
    notifyListeners();
  }


  void changeLocale(Locale newLocale){

    if (_currentLocale == newLocale) return;
    _currentLocale = newLocale;
    _saveLocale(_currentLocale.languageCode);
    notifyListeners();
  }


  Future<void> _saveLocale(String locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_localeKey, locale);
  }

  Future<Locale> _getLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String savedLocale = prefs.getString(_localeKey) ?? "en";

    return Locale(savedLocale);
  }

}