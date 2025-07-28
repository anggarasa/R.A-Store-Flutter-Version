import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_app_ui_flutter/pages/auth/register.dart';
// import 'package:simple_app_ui_flutter/pages/auth/forgot_password.dart';
// import 'package:simple_app_ui_flutter/pages/auth/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static const String routeName = 'auth/login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset('assets/images/img-dog.jpg', fit: BoxFit.cover),
          ),

          // Gradient Overlay
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.5),
                    Color.fromRGBO(0, 0, 0, 0.5),
                    Color.fromRGBO(175, 38, 53, 0.4),
                    Color.fromRGBO(175, 38, 53, 0.88),
                    Color.fromRGBO(175, 38, 53, 1.0),
                  ],
                  stops: [0.0, 0.4, 0.6, 0.8, 1.0],
                ),
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    // Royal Canin Logo
                    Image.asset('assets/images/Logo-white.png', height: 100),
                    const SizedBox(height: 60),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Card(
                            color: const Color.fromRGBO(255, 255, 255, 0.7),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Hai, Selamat Datang Kembali!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Masuk sekarang dan temukan semua kebutuhan hewan kesayanganmu',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 50),
                                  Text(
                                    'Email atau Nama Pengguna',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Masukkan Disini...',
                                      prefixIcon: Icon(
                                        Icons.person_outline,
                                        color: Colors.grey[600],
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            vertical: 15,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    'Kata Sandi',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  TextField(
                                    obscureText: _obscurePassword,
                                    decoration: InputDecoration(
                                      hintText: 'Masukkan Kata Sandi',
                                      prefixIcon: Icon(
                                        Icons.lock_outline,
                                        color: Colors.grey[600],
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          _obscurePassword
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey[600],
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _obscurePassword =
                                                !_obscurePassword;
                                          });
                                        },
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            vertical: 15,
                                          ),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: _rememberMe,
                                            onChanged: (bool? newValue) {
                                              setState(() {
                                                _rememberMe = newValue!;
                                              });
                                            },
                                            activeColor: const Color(
                                              0xFFE50000,
                                            ),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                          ),
                                          Text(
                                            'Ingat Saya',
                                            style: TextStyle(
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Handle Lupa Kata Sandi!
                                        },
                                        child: const Text(
                                          'Lupa Kata Sandi?',
                                          style: TextStyle(
                                            color: Color(0xFFE50000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Handle Masuk button press
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                          0xFFE50000,
                                        ), // Royal Canin Red
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 15,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Masuk',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Belum punya akun? ',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(
                                            context,
                                          ).pushReplacementNamed(
                                            Register.routeName,
                                          );
                                        },
                                        child: const Text(
                                          'Yuk, Mendaftar',
                                          style: TextStyle(
                                            color: Color(0xFFE50000),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
