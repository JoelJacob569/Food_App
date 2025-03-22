// ignore_for_file: avoid_print

import 'package:fapp/utils/custom/listviewhori.dart';
import 'package:fapp/utils/custom/listviewverti.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final searchController = TextEditingController();
  final List<FoodCategory> myfoodCategories = [
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
    FoodCategory(imageUrl: 'assets/images/burger.png', name: 'Burgers'),
    FoodCategory(imageUrl: 'assets/images/pizza.png', name: 'Pizza'),
  ];

  final List<Food> myfoodlist = [
    Food(
        imageUrl: 'assets/images/burger.png',
        name: 'Burgers',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/pizza.png',
        name: 'Pizza',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/burger.png',
        name: 'Burgers',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/pizza.png',
        name: 'Pizza',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/burger.png',
        name: 'Burgers',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/pizza.png',
        name: 'Pizza',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/burger.png',
        name: 'Burgers',
        location: 'kochi',
        quantity: '4'),
    Food(
        imageUrl: 'assets/images/pizza.png',
        name: 'Pizza',
        location: 'kochi',
        quantity: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onChanged: (value) {
                // Implement search logic here based on the search query
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a search query';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            FoodCategoryList(
              foodCategories: myfoodCategories,
              onCategoryTap: (category) {
                // Handle the tapped food category here
                print("Food category tapped: ${category.name}");
                // You can navigate to another screen or perform other actions based on the category
              },
            ),
            Expanded(
                child: FoodList(
              foodlist: myfoodlist,
              onFoodItemTap: (food) {
                // Handle the tapped food item here
                print("Food item tapped: ${food.name}");
                // ... other actions
              },
            )),
          ],
        ),
      ),
    );
  }
}
