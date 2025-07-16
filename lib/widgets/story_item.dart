import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String image;
  final String name;
  final bool isUser;

  const StoryItem({
    super.key,
    required this.image,
    required this.name,
    this.isUser = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: isUser
                  ? const LinearGradient(
                colors: [Colors.grey, Colors.grey], // user - grey border
              )
                  : const LinearGradient(
                colors: [
                  Color(0xFFfeda75),
                  Color(0xFFfa7e1e),
                  Color(0xFFd62976),
                  Color(0xFF962fbf),
                  Color(0xFF4f5bd5)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold, // 👈 Bold the name
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}