import 'package:flutter/material.dart';
import 'package:simple_app_ui_flutter/pages/auth/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/auth/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pop();
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed(Login.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3F4),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/component-top.png'),
          ),

          // Decorative elements - Bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/component-bottom.png'),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Crown icon
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/images/Logo.png'),
                ),

                const SizedBox(height: 10),

                // Description text
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Nutrisi Spesifik. Hidup yang Lebih Sehat untuk Hewan Kesayangan Anda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFDC143C),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
