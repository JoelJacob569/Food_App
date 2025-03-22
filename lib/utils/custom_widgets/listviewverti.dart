import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  final List<Food> foodlist;

  // Define a variable to hold the onTap callback function
  final void Function(Food food) onFoodItemTap;

  const FoodList(
      {super.key, required this.foodlist, required this.onFoodItemTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: foodlist.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () =>
                onFoodItemTap(foodlist[index]), // Call the callback function
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Image.asset(
                    foodlist[index].imageUrl,
                    width: 80,
                    height: 80,
                  ),
                  Column(
                    children: [
                      Text(foodlist[index].name),
                      Text(foodlist[index].location),
                      Text(foodlist[index].quantity),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Food {
  final String imageUrl;
  final String name;
  final String location;
  final String quantity;

  Food({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.quantity,
  });
}
