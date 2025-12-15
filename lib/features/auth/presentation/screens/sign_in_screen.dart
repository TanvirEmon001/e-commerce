import 'package:e_commerce/app/app_colors.dart';
import 'package:e_commerce/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const String name = "/sign-in";
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              spacing: 8,
              children: [
                AppLogo(width: 90),
                const SizedBox(height: 8),
                Text(
                  "Sign in",
                  style: textTheme.headlineLarge?.copyWith(fontWeight: .bold),
                ),
                Text(
                  'Login to your account with email and password',
                  textAlign: .center,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 16),

                TextFormField(
                  textInputAction: .next,
                  keyboardType: .emailAddress,
                  decoration: InputDecoration(hintText: "E-mail"),
                  validator: (String? v) {
                    if (v?.trim().isEmpty ?? true) {
                      return "Enter your E-mail";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  textInputAction: .done,
                  keyboardType: .visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                  validator: (String? v) {
                    if (v?.trim().isEmpty ?? true) {
                      return "Enter password";
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: .end,
                  children: [
                    TextButton(
                      onPressed: _onTapForgotPassword,
                      child: Text('Forgot Password?'),
                    ),
                  ],
                ),
                FilledButton(onPressed: _onTapSignIn, child: Text("Sign In")),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    style: textTheme.bodyMedium,
                    text: "Don't have an account? ",
                    recognizer: TapGestureRecognizer()..onTap = _onTapSignUp,
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: .bold,
                          color: AppColors.themeColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  void _onTapSignUp() {
    Navigator.pop(context);
  }
  void _onTapSignIn() {}

  void _onTapForgotPassword() {}

}
