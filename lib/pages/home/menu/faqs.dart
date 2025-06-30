import 'package:flutter/material.dart';

class Faqs extends StatelessWidget {
  const Faqs({super.key});

  static const String routeName = '/menu/FAQs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FAQs")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. How it will take to delivery?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, ullam quis sit nobis soluta dolor. Esse repellendus perspiciatis est dolorum exercitationem illo distinctio quis, maiores quaerat enim iste, eos mollitia atque et accusamus, explicabo sapiente quae suscipit voluptatem omnis corrupti quasi. Omnis recusandae officiis sequi porro voluptate deserunt, praesentium nam?",
            ),

            SizedBox(height: 50),

            Text(
              "2. What is refund system?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, ullam quis sit nobis soluta dolor. Esse repellendus perspiciatis est dolorum exercitationem illo distinctio quis, maiores quaerat enim iste, eos mollitia atque et accusamus, explicabo sapiente quae suscipit voluptatem omnis corrupti quasi.",
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur unde temporibus saepe nam incidunt corrupti aliquam facilis? Nisi modi repellat obcaecati iure esse at quae autem? Provident nisi exercitationem architecto.",
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
