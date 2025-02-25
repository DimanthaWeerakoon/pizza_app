import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blueAccent,
        leading: Container(
          //padding: const EdgeInsets.all(5),
          color: const Color.fromARGB(255, 206, 195, 192).withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  width: 10,
                  height: 10,
                  color: Colors.white.withOpacity(0.5),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Implement search functionality
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: IconButton(
                      icon: const Icon(Icons.star),
                      onPressed: () {
                        // Implement search functionality
                      },
                    ),
                  ),
                  Flexible(
                    child: IconButton(
                      icon: const Icon(Icons.star),
                      onPressed: () {
                        // Implement search functionality
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
