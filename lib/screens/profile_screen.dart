import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'annie.karim',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: const [
          Icon(Icons.notifications_none),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile info row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/story1.jpg'),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ProfileStat(title: 'Posts', count: '0'),
                        ProfileStat(title: 'Followers', count: '120'),
                        ProfileStat(title: 'Following', count: '145'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Name & bio
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Annie Karim',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 1),
                  Text(
                    'App dev | flutter | dart \n Crafting clean ui/ux & high performance apps  ',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Edit Profile Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.grey),
                      ),
                      onPressed: () {},
                      child: const Text('Edit Profile'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Highlights (dummy)
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: List.generate(
                  5,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white12,
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Highlight',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const Divider(color: Colors.grey),

            // Tabs (Grid, Reels, Tagged)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.grid_on, color: Colors.white),
                Icon(Icons.video_collection_outlined, color: Colors.white38),
                Icon(Icons.person_pin_outlined, color: Colors.white38),
              ],
            ),

            const SizedBox(height: 40),

            // No posts yet
            Column(
              children: const [
                Icon(Icons.camera_alt_outlined, size: 60, color: Colors.white30),
                SizedBox(height: 10),
                Text(
                  'Create the moment with a friend',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Create your first post',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  final String title;
  final String count;

  const ProfileStat({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white70),
        )
      ],
    );
  }
}