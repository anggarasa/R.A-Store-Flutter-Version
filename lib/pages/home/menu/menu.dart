import 'package:flutter/material.dart';
import 'package:simple_app_ui_flutter/pages/auth/splash_screen.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/about_us.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/faqs.dart';
import 'package:simple_app_ui_flutter/pages/home/menu/terms_conditions.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const String routeName = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(30),
        child: Column(
          children: [
            // Invite Friend
            MenuList(name: "Invite Friend"),

            // About Us
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AboutUs.routeName);
              },
              borderRadius: BorderRadius.circular(10),
              child: MenuList(name: "About Us"),
            ),

            // FAQs
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Faqs.routeName);
              },
              borderRadius: BorderRadius.circular(10),
              child: MenuList(name: "FAQs"),
            ),

            // Terms & Conditions
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(TermsConditions.routeName);
              },
              borderRadius: BorderRadius.circular(10),
              child: MenuList(name: "Terms & Conditions"),
            ),

            // Help Center
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: MenuList(name: "Help Center"),
            ),

            // Rate This App
            MenuList(name: "Rate This App"),

            // Privacy Policy
            MenuList(name: "Privacy Policy"),

            // Contact Us
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: MenuList(name: "Contact Us"),
            ),

            SizedBox(height: 50),

            // Logout
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  SplashScreen.routeName,
                  (route) => false,
                );
              },
              borderRadius: BorderRadius.circular(10),
              child: MenuList(name: "Logout"),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  final String name;

  const MenuList({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: TextStyle(fontSize: 18, color: Colors.black)),
          Icon(Icons.chevron_right, color: Colors.grey, size: 35),
        ],
      ),
    );
  }
}
