import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  static const String routeName = '/menu/terms-conditions';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Terms & Conditions")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General site usage last revised \June 06-30-2025",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, ullam quis sit nobis soluta dolor. Esse repellendus perspiciatis est dolorum exercitationem illo distinctio quis, maiores quaerat enim iste, eos mollitia atque et accusamus.",
            ),

            SizedBox(height: 30),

            Text(
              "1. Agreement",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque at magnam praesentium, ratione ut esse neque! Ut a nisi tempora ducimus suscipit. Dolores necessitatibus quisquam itaque ullam eum sequi qui!",
            ),

            SizedBox(height: 30),

            Text(
              "2. Account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque at magnam praesentium, ratione ut esse neque! Ut a nisi tempora ducimus suscipit. Dolores necessitatibus quisquam itaque ullam eum sequi qui!",
            ),

            SizedBox(height: 30),

            Text(
              "3. Relationship With Groceries",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis ex cumque, laboriosam laudantium voluptatibus et!",
            ),
          ],
        ),
      ),
    );
  }
}
