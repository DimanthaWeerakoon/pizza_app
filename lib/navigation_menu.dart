import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pizza_app/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    //final darkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: Obx(() => NavigationBar(
                height: 80,
                elevation: 0,
                backgroundColor: const Color.fromARGB(244, 7, 10, 31),
                indicatorColor: Colors.white.withOpacity(0),
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                    controller.selectedIndex.value = index,
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Iconsax.home, color: Colors.white),
                    label: "",
                  ),
                  NavigationDestination(
                      icon: Icon(Iconsax.shopping_cart, color: Colors.white),
                      label: ""),
                  NavigationDestination(
                      icon: Icon(Iconsax.document, color: Colors.white),
                      label: ""),
                  NavigationDestination(
                      icon: Icon(Iconsax.star, color: Colors.white), label: ""),
                ])),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePageScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: const Color.fromARGB(255, 48, 46, 38),
    ),
    Container(
      color: Colors.pink,
    ),
    // const StoreScreen(),
    // const Favouritescreen(),
    // const SettingsScreen(),
  ];
}
