import 'package:flutter/material.dart';
import 'package:simple_app_ui_flutter/pages/auth/auth_home.dart';
import 'package:simple_app_ui_flutter/pages/auth/forgot_password.dart';
import 'package:simple_app_ui_flutter/pages/auth/login.dart';
import 'package:simple_app_ui_flutter/pages/auth/new_password.dart';
import 'package:simple_app_ui_flutter/pages/auth/otp_auth.dart';
import 'package:simple_app_ui_flutter/pages/auth/register.dart';
import 'package:simple_app_ui_flutter/pages/home/create_pack.dart';
import 'package:simple_app_ui_flutter/pages/home/detail_new_item.dart';
import 'package:simple_app_ui_flutter/pages/home/detail_populer_packs.dart';
import 'package:simple_app_ui_flutter/pages/home/home_page.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/about_us.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/faqs.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/menu.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/terms_conditions.dart';
import 'package:simple_app_ui_flutter/pages/home/new_items_all.dart';
import 'package:simple_app_ui_flutter/pages/home/populer_pack_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple App UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const AuthHome(),
      routes: {
        AuthHome.routeName: (context) =>
            const AuthHome(), // This is the route for the AuthHome page
        Register.routeName: (context) =>
            const Register(), // This is the route for the Register page
        Login.routeName: (context) =>
            const Login(), // This is the route for the Login page
        ForgotPassword.routeName: (context) =>
            const ForgotPassword(), // This is the route for the Forgot Password page
        NewPassword.routeName: (context) =>
            const NewPassword(), // This is the route for the New Password page
        OtpAuth.routeName: (context) =>
            const OtpAuth(), // This is the route for the OTP Verification page
        HomePage.routeName: (context) =>
            const HomePage(), // This is the route for the Home page
        MenuPage.routeName: (context) =>
            const MenuPage(), // This is the route for the Menu page
        AboutUs.routeName: (context) =>
            const AboutUs(), // This is the route for the About Us page
        Faqs.routeName: (context) =>
            const Faqs(), // This is the route the for FAQs page
        TermsConditions.routeName: (context) =>
            const TermsConditions(), // This is the route for the Terms & Conditions page
        NewItemsAll.routeName: (context) =>
            const NewItemsAll(), // This is the route for the All New Items page
        PopulerPackAll.routeName: (context) =>
            const PopulerPackAll(), // This is the route for the All Populer Packs page
        CreatePack.routeName: (context) =>
            const CreatePack(), // This is the route for the Create Pack page
        DetailPopulerPacks.routeName: (context) =>
            const DetailPopulerPacks(), // This is the route for the Detail Popular Packs page
        DetailNewItem.routeName: (context) =>
            const DetailNewItem(), // This is the route for the Detail New Item page
      },
    );
  }
}
