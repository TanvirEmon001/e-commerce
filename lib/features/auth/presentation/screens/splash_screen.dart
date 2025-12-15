import 'package:e_commerce/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import '../../../common/presentation/screens/main_nav_holder_screen.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  static const String name = "/splash-screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushNamedAndRemoveUntil(
      context,
      MainNavHolderScreen.name,
          (predicate) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Spacer(),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text("Version 1.0", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
