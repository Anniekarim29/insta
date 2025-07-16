import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String profileImage;
  final String username;
  final String postImage;
  final String description;
  final String timeAgo;

  const PostItem({
    super.key,
    required this.profileImage,
    required this.username,
    required this.postImage,
    this.description = '',
    this.timeAgo = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(profileImage)),
          title: Text(username, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          trailing: const Icon(Icons.more_vert, color: Colors.white),
        ),
        Image.asset(postImage),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.send, color: Colors.white),
              Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14),
          child: Text('1,245 likes', style: TextStyle(color: Colors.white)),
        ),
        if (description.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: Text('$username: $description', style: const TextStyle(color: Colors.white)),
          ),
        if (timeAgo.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(timeAgo, style: const TextStyle(color: Colors.grey, fontSize: 12)),
          ),
        const SizedBox(height: 12),
      ],
    );
  }
}
