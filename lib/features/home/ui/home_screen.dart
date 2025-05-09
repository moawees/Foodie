import 'package:flutter/material.dart';
import 'widgets/category_button.dart';
import 'widgets/food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Menu button
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    elevation: 4,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {},
                      child: Container(
                        width: 56,
                        height: 56,
                        alignment: Alignment.center,
                        child: const Icon(Icons.menu,
                            size: 28, color: Colors.black),
                      ),
                    ),
                  ),
                  // Profile image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://randomuser.me/api/portraits/women/1.jpg',
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Find your',
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Best Food here',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 16),
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search food...',
                                border: InputBorder.none,
                                isCollapsed: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Material(
                    color: Color(0xFFE60023),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    elevation: 2,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {},
                      child: Container(
                        width: 52,
                        height: 52,
                        alignment: Alignment.center,
                        child: const Icon(Icons.tune, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(
                      icon: Icons.lunch_dining,
                      label: 'Fast food',
                      selected: true,
                    ),
                    const SizedBox(width: 12),
                    CategoryButton(
                      icon: Icons.local_cafe,
                      label: 'Drink',
                    ),
                    const SizedBox(width: 12),
                    CategoryButton(
                      icon: Icons.fastfood,
                      label: 'Snack',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Food cards (horizontal list)
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(left: 16, right: 8),
                scrollDirection: Axis.horizontal,
                children: [
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Egg Pasta',
                    subtitle: 'Spicy Chicken Pasta',
                    rating: 5.0,
                    price: 15.0,
                  ),
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Fried Chicken',
                    subtitle: 'Golden brown fried',
                    rating: 4.5,
                    price: 25.0,
                  ),
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Fried Chicken',
                    subtitle: 'Golden brown fried',
                    rating: 4.5,
                    price: 25.0,
                  ),
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Fried Chicken',
                    subtitle: 'Golden brown fried',
                    rating: 4.5,
                    price: 25.0,
                  ),
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Fried Chicken',
                    subtitle: 'Golden brown fried',
                    rating: 4.5,
                    price: 25.0,
                  ),
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Fried Chicken',
                    subtitle: 'Golden brown fried',
                    rating: 4.5,
                    price: 25.0,
                  ),
                  FoodCard(
                    imageUrl:
                        'https://images.pexels.com/photos/461382/pexels-photo-461382.jpeg',
                    title: 'Fried Chicken',
                    subtitle: 'Golden brown fried',
                    rating: 4.5,
                    price: 25.0,
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom navigation bar placeholder
    );
  }
}
