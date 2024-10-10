import 'package:flutter/material.dart';

class FoodCategoryList extends StatelessWidget {
  final List<FoodCategory> foodCategories;

  // Define a variable to hold the onTap callback function
  final void Function(FoodCategory category) onCategoryTap;

  FoodCategoryList({required this.foodCategories, required this.onCategoryTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodCategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => onCategoryTap(
                foodCategories[index]), // Call the callback function
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Image.asset(
                    foodCategories[index].imageUrl,
                    width: 80,
                    height: 80,
                  ),
                  Text(foodCategories[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FoodCategory {
  final String imageUrl;
  final String name;

  FoodCategory({required this.imageUrl, required this.name});
}
