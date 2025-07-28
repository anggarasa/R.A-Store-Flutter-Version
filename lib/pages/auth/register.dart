import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_app_ui_flutter/pages/auth/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  static const String routeName = '/auth/register';

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _acceptTerms = false;
  bool _showPassword = false;
  bool _showConfirmPassword = false;

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
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Royal Canin Logo
                Image.asset('assets/images/Logo-white.png', height: 100),
                const SizedBox(height: 20),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Hai, Selamat Datang!',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    'Buat Akun Baru dan Temukan Semua Kebutuhan Hewan Kesayanganmu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              _buildTextField(
                                label: 'Email',
                                hint: 'Masukkan Disini...',
                                icon: Icons.mail_outline,
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 20),
                              _buildTextField(
                                label: 'Nama Pengguna',
                                hint: 'Masukkan Disini...',
                                icon: Icons.person_outline,
                              ),
                              const SizedBox(height: 20),
                              _buildPasswordTextField(
                                label: 'Kata Sandi',
                                hint: 'Masukkan Kata Sandi',
                                showPassword: _showPassword,
                                onToggle: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                              ),
                              const SizedBox(height: 20),
                              _buildPasswordTextField(
                                label: 'Konfirmasi Kata Sandi',
                                hint: 'Masukkan Kata Sandi',
                                showPassword: _showConfirmPassword,
                                onToggle: () {
                                  setState(() {
                                    _showConfirmPassword =
                                        !_showConfirmPassword;
                                  });
                                },
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Checkbox(
                                    value: _acceptTerms,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _acceptTerms = value ?? false;
                                      });
                                    },
                                    activeColor: Colors.red,
                                  ),
                                  Expanded(
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Dengan ini, saya menyetujui ',
                                        style: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 13,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Syarat & Ketentuan',
                                            style: const TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const TextSpan(text: ' serta '),
                                          TextSpan(
                                            text: 'Kebijakan Privasi',
                                            style: const TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const TextSpan(
                                            text:
                                                ' yang berlaku di aplikasi ini',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle register button press
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red[700],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Daftar',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Sudah punya akun? ',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(
                                        context,
                                      ).pushReplacementNamed(Login.routeName);
                                    },
                                    child: Text(
                                      'Yuk, Masuk',
                                      style: TextStyle(
                                        color: Colors.red[700],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
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
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: Icon(icon, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTextField({
    required String label,
    required String hint,
    required bool showPassword,
    required VoidCallback onToggle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            obscureText: !showPassword,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.grey),
              prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
              suffixIcon: GestureDetector(
                onTap: onToggle,
                child: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
