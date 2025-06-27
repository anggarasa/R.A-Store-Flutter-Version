import 'package:flutter/material.dart';
import 'package:simple_app_ui_flutter/pages/auth/login.dart';
import 'package:simple_app_ui_flutter/pages/auth/register.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({super.key});

  static const String routeName = '/auth/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
            ),

            // Content
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),

                  // Welcome text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome to our',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'R.A Store',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[700],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Grocery image
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        'assets/images/bg_auth_home.jpg', // You need to add this image to your assets
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // Bottom buttons
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).pushReplacementNamed(Login.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Continue with Email or Phone',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 15),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).pushReplacementNamed(Register.routeName);
                          },
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            minimumSize: const Size(double.infinity, 50),
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Create an account',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
