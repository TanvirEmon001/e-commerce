import 'package:e_commerce/app/app_routes.dart';
import 'package:e_commerce/app/app_theme.dart';
import 'package:e_commerce/app/providers/locale_language_provider.dart';
import 'package:e_commerce/app/providers/theme_provider.dart';
import 'package:e_commerce/features/common/presentation/providers/main_nav_container_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import '../features/auth/presentation/screens/splash_screen.dart';
import '../features/category/presentation/providers/category_list_provider.dart';
import '../features/home/presentation/provider/home_slider_provider.dart';
import '../l10n/app_localizations.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocaleLanguageProvider()..loadInitialLanguage(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider()..loadInitialThemeMode(),
        ),
        ChangeNotifierProvider(create: (context) => MainNavContainerProvider(),),
        ChangeNotifierProvider(create: (_) => CategoryListProvider()),
        ChangeNotifierProvider(create: (_) => HomeSliderProvider())
      ],
      child: Consumer<LocaleLanguageProvider>(
        builder: (context, localeProvider, _) {
          return MaterialApp(
            initialRoute: SplashScreen.name,
            onGenerateRoute: AppRoutes.routes,
            debugShowCheckedModeBanner: false,
            themeMode: .light,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [Locale('en'), Locale('bn')],
            locale: localeProvider.currentLocale, //for default locale
          );
        },
      ),
    );
  }
}
