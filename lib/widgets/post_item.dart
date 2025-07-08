import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String profileImage;
  final String username;
  final String postImage;

  const PostItem({
    super.key,
    required this.profileImage,
    required this.username,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(profileImage)),
          title: Text(username),
          trailing: const Icon(Icons.more_vert),
        ),
        Image.asset(postImage),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
          child: Row(
            children: const [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.comment),
              SizedBox(width: 10),
              Icon(Icons.send),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
