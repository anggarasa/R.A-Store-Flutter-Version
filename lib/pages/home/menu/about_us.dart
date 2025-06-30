import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  static const String routeName = '/menu/about-us';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Us",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium quis exercitationem iste excepturi nostrum fugit, tempore iure sequi ipsam. Distinctio tenetur nam itaque sint magni magnam temporibus doloribus accusantium numquam corrupti delectus, veritatis obcaecati dicta quae provident deserunt ullam voluptates quas voluptatem minima necessitatibus. Nemo, laborum? Reprehenderit suscipit, cumque voluptatibus iusto quo aspernatur adipisci magni debitis mollitia minus optio similique, fuga libero enim, dolore illo officia sequi saepe perspiciatis? Debitis repudiandae dolores earum quas alias accusamus sunt incidunt quos reprehenderit non nesciunt saepe veniam, praesentium tenetur blanditiis illo voluptates sit! Ad excepturi explicabo reprehenderit molestias aperiam voluptates nostrum laboriosam ut.",
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, ullam quis sit nobis soluta dolor. Esse repellendus perspiciatis est dolorum exercitationem illo distinctio quis, maiores quaerat enim iste, eos mollitia atque et accusamus, explicabo sapiente quae suscipit voluptatem omnis corrupti quasi. Omnis recusandae officiis sequi porro voluptate deserunt, praesentium nam?",
            ),

            SizedBox(height: 20),

            Text(
              "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sed, numquam! Itaque asperiores eveniet nesciunt cupiditate possimus ad recusandae obcaecati minus ratione",
            ),
          ],
        ),
      ),
    );
  }
}
