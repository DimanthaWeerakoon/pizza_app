import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 7, 10, 31),
      appBar: AppBar(
        // toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(244, 7, 10, 31),
        leading: Container(
          // height: 10,
          width: 10,
          padding: const EdgeInsets.all(5),
          color: const Color.fromARGB(255, 206, 195, 192).withOpacity(0.5),
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ),
        actions: [
          const Text(
            "Hello User !  ",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/image1.png'),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/pizza.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: 200,
                      width:
                          400, // Adjust the width to match the outer container
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue.withOpacity(0.5),
                            const Color.fromARGB(255, 175, 172, 175)
                                .withOpacity(0.5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meal Category",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50, // Adjust the height as needed
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  // itemCount: 5,
                  itemBuilder: (context, value) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        elevatedButton(1, "Breakfast"),
                        elevatedButton(2, "Lunch"),
                        elevatedButton(3, "Dinner"),
                        elevatedButton(4, "Short Eats"),
                        elevatedButton(4, "Pizza Special"),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  populerDestination('assets/1img.jpg', 'Lorem ipsum',
                      'Lorem Ipsum dolor sal amet'),
                  populerDestination('assets/2img.jpg',
                      'Lorem Ipsum dolor sal amet', 'Lorem ipsum'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget elevatedButton(int value, String text) => Row(
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  foregroundColor: Colors.white),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      );

  Widget populerDestination(String img, String city, String country) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(6)),
      height: 250,
      width: 180,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              child: Image.asset(
            img,
            fit: BoxFit.cover,
            height: 140,
            width: 160,
          )),
          const SizedBox(height: 2),
          Text(
            country,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            city,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 26, 25, 25)),
          ),
        ],
      ),
    );
  }
}
