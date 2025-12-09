import 'package:e_commerce/app/app_routes.dart';
import 'package:e_commerce/features/auth/presentation/screens/test_screen.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatelessWidget{
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: TestScreen.name,
      onGenerateRoute: AppRoutes.routes,
    );
  }

}