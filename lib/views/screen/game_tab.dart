import 'package:animation_2/views/widgets/ImagesAssets.dart';
import 'package:flutter/material.dart';

// Model class for game item
class GameItem {
  final String image;
  final String title;
  final String points;

  GameItem({required this.image, required this.title, required this.points});
}

class GameTab extends StatelessWidget {
  const GameTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GameItem> games = [
      GameItem(image: ImagesAssets.game1, title: "1vs1", points: '100'),
      GameItem(image: ImagesAssets.game2, title: "Battle" , points: '100'),
      GameItem(image: ImagesAssets.game3, title: "Survival" , points: '400'),
      GameItem(image: ImagesAssets.game4, title: "Arena" , points: '500'),
      GameItem(image: ImagesAssets.game5, title: "Shooter" , points: '156'),
      GameItem(image: ImagesAssets.game6, title: "Zombie", points: '564'),
      GameItem(image: ImagesAssets.game7, title: "Sniper" , points: '345'),
      GameItem(image: ImagesAssets.game8, title: "Race" , points: '234'),
      GameItem(image: ImagesAssets.game10, title: "Football" , points: '634'),
      GameItem(image: ImagesAssets.game11, title: "Cricket" , points: '654'),
      GameItem(image: ImagesAssets.game12, title: "Puzzle" , points: '734'),
      GameItem(image: ImagesAssets.game13, title: "Adventure" , points: '454'),
      GameItem(image: ImagesAssets.game14, title: "Arcade" , points: '765'),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          // Background image at the top
          SliverToBoxAdapter(
            child: Image.asset("assets/images/background.jpg"),
          ),

          // Grid of games
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                games[index].image,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              games[index].points,
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          games[index].title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  );
                },
                childCount: games.length,
              ),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
