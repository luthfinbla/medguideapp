import 'package:flutter/material.dart';
import 'package:medguideapp/screens/signup_screen.dart';
import 'package:medguideapp/screens/signin_screen.dart';
import 'package:medguideapp/theme/theme.dart';
import 'package:medguideapp/widgets/custom_scaffold.dart';
import 'package:medguideapp/widgets/welcome_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(  // Menggunakan custom scaffold untuk tata letak
      child: Column(
        children: [
          Flexible(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 0, horizontal: 40.0,
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to MedGuide!\n',  // Teks selamat datang
                        style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                          height: 1,
                          color: const Color.fromARGB(255, 13, 75, 126),
                        ),
                      ),
                      TextSpan(
                        text: '\nLogin to enjoy the features we’ve provided, and stay healthy!',  // Teks deskripsi
                        style: TextStyle(
                          fontSize: 20,
                          height: 1.5,
                          color: Color.fromARGB(255, 20, 57, 88),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign in',  // Teks tombol sign-in
                      onTap: SigninScreen(),  // Aksi ketika tombol ditekan
                      color: Color.fromARGB(0, 228, 253, 255),
                      textColor: Color.fromARGB(255, 8, 52, 88),
                    ),
                  ),
                  Expanded(
                    child: WelcomeButton(
                      buttonText: 'Sign up',  // Teks tombol sign-up
                      onTap: const SignupScreen(),  // Aksi ketika tombol ditekan
                      color: Color.fromARGB(0, 3, 3, 26),
                      textColor: lightColorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
