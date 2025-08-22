import 'package:flutter/material.dart';
import '../widgets/promo_card.dart';
import '../widgets/category_item.dart'; // Add this import
import '../widgets/recommended_item.dart'; // Add this import

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row with NP badge
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text("+50 NP", style: TextStyle(color: Colors.white)),
                ),
                Image.asset("assets/images/freefire.jpg", width: 100),
                Image.asset("assets/images/victory_arena.jpg", width: 100),
              ],
            ),
          ),

          const SizedBox(width: 10),
          // Characters + PromoCard
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/char2.png", height: 200),
              // Make PromoCard flexible
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PromoCard(),
                ),
              ),
            ],
          ),

          // Another character on right
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Category",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryItem( // Use the new widget
                              imagePath: "assets/images/IMG-20250821-WA0024.jpg",
                              label: "Bermuda"
                          ),
                          const SizedBox(width: 10),
                          CategoryItem( // Use the new widget
                              imagePath: "assets/images/IMG-20250821-WA0021.jpg",
                              label: "Custom"
                          ),
                        ],
                      ),
                      const SizedBox(width: 90),
                    ],
                  ),
                  const SizedBox(width: 90),
                  Image.asset(
                    "assets/images/char1.png",
                    height: 180,
                    alignment: Alignment.bottomLeft,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 0),

          // Recommended section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Recommended",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              RecommendedItem( // Use the new widget
                  imagePath: "assets/images/IMG-20250821-WA0025.jpg",
                  label: "115 diamond"
              ),
              RecommendedItem(
                  imagePath: "assets/images/IMG-20250821-WA0023.jpg",
                  label: "140 diamond"
              ),
              RecommendedItem(
                  imagePath: "assets/images/uc.jpg",
                  label: "UC 325"
              ),
              RecommendedItem(
                  imagePath: "assets/images/IMG-20250821-WA0011.jpg",
                  label: "Crunchroll"
              ),
              RecommendedItem(
                  imagePath: "assets/images/IMG-20250821-WA0018.jpg",
                  label: "Prime"
              ),
              RecommendedItem(
                  imagePath: "assets/images/IMG-20250821-WA0014.jpg",
                  label: "Tiktok"
              ),
              RecommendedItem(
                  imagePath: "assets/images/netflix.jpg",
                  label: "NETFLIX"
              ),
              RecommendedItem(
                  imagePath: "assets/images/IMG-20250821-WA0013.jpg",
                  label: "CHAT-GPT"
              ),
            ],
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}