import 'package:e_commerce/app/providers/locale_language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../app/extensions/localization_extension.dart';
class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState(){
    return _LanguageSelectorState();
  }

}

class _LanguageSelectorState extends State<LanguageSelector>{


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(context.localizations.changeLanguage),
        DropdownMenu<String>(
          initialSelection: context
            .read<LocaleLanguageProvider>()
            .currentLocale
            .languageCode,
            onSelected: (String? language) {
              context.read<LocaleLanguageProvider>().changeLocale(Locale(language!));
            },
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'en', label: 'English'),
              DropdownMenuEntry(value: 'bn', label: 'বাংলা'),
            ]
        )
      ],
    );
  }


}