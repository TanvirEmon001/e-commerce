import 'package:e_commerce/app/app_colors.dart';
import 'package:e_commerce/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:e_commerce/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:e_commerce/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const String name = "/sign-up";
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() {
    return _SignUpScreenState();
  }
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  "Complete Profile",
                  style: textTheme.headlineLarge?.copyWith(fontWeight: .bold),
                ),
                Text(
                  "Get started with us with your details",
                  style: textTheme.bodyLarge,
                ),

                const SizedBox(height: 16),

                TextFormField(
                  textInputAction: .next,
                  keyboardType: .text,
                  decoration: InputDecoration(hintText: "First Name"),
                  validator: (String? v) {
                    if (v?.trim().isEmpty ?? true) {
                      return "Enter your first name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  textInputAction: .next,
                  keyboardType: .text,
                  decoration: InputDecoration(hintText: "Last Name"),
                  validator: (String? v) {
                    if (v?.trim().isEmpty ?? true) {
                      return "Enter your last name";
                    }
                    return null;
                  },
                ),
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
                  textInputAction: .next,
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
                TextFormField(
                  textInputAction: .next,
                  keyboardType: .phone,
                  decoration: InputDecoration(hintText: "Phone"),
                  validator: (String? v) {
                    if (v?.trim().isEmpty ?? true) {
                      return "Enter your phone number";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  textInputAction: .done,
                  keyboardType: .text,
                  decoration: InputDecoration(hintText: "Shipping Address"),
                  validator: (String? v) {
                    if (v?.trim().isEmpty ?? true) {
                      return "Enter shipping address";
                    }
                    return null;
                  },
                ),
                FilledButton(onPressed: _onTapSignUp, child: Text("Sign Up")),
                RichText(
                  text: TextSpan(
                    style: textTheme.bodyMedium,
                    text: "Already have an account? ",
                    recognizer: TapGestureRecognizer()..onTap = _onTapSignIn,
                    children: [
                      TextSpan(
                        text: "Sign in",
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
    Navigator.pushNamed(context, VerifyOtpScreen.name);
  }


  void _onTapSignIn() {
    Navigator.pushNamed(context, SignInScreen.name);
  }

}
