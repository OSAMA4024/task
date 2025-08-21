import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5DADA),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: [
          // LEFT SIDE (text + icons)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Follow us on Facebook / TikTok Get 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 9,
                  ),
                ),
                const SizedBox(height: 8),
                // Horizontal scroll to prevent overflow
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset("assets/images/uc.jpg", width: 30),
                      const SizedBox(width: 8),
                      Image.asset("assets/images/netflix.jpg", width: 30),
                      const SizedBox(width: 8),
                      Image.asset("assets/images/IMG-20250821-WA0012.jpg", width: 30),
                      const SizedBox(width: 8),
                      Image.asset("assets/images/canva.jpg", width: 30),
                      const SizedBox(width: 8),
                      Image.asset("assets/images/free.jpg", width: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // RIGHT SIDE (cartoon)
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/pic7.png", width: 90),
            ],
          ),
        ],
      ),
    );
  }
}