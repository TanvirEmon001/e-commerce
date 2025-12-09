import 'package:e_commerce/features/auth/presentation/screens/test_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static Route<dynamic> routes(RouteSettings settings){
    Widget widget = SizedBox();

    if (settings.name == TestScreen.name){
      widget = TestScreen();
    }
    
    return MaterialPageRoute(builder: (ctx) => widget);
  }

}