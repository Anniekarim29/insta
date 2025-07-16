import 'package:flutter/material.dart';
import '../widgets/story_item.dart';
import '../widgets/post_item.dart';
import '../screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          const Icon(Icons.favorite_border, color: Colors.white),
          const SizedBox(width: 15),
          const Icon(Icons.send, color: Colors.white),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // Stories heading
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Text(
              'Stories',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),

          // Stories list
          SizedBox(
            height: 95,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoryItem(
                  image: 'assets/images/story1.jpg',
                  name: 'Your Story',
                  isUser: true,
                ),
                StoryItem(image: 'assets/images/story2.jpg', name: 'Sara Ali'),
                StoryItem(image: 'assets/images/story3.jpg', name: 'Ayesha'),
                StoryItem(image: 'assets/images/story4.jpg', name: 'Sonam'),
                StoryItem(image: 'assets/images/story5.jpg', name: 'Anmol'),
              ],
            ),
          ),

          const Divider(color: Colors.grey),

          // Posts
          const PostItem(
            profileImage: 'assets/images/story1.jpg',
            username: 'Annie Karim',
            postImage: 'assets/images/post1.jpg',
            description: 'Loving the weekend sunset vibes 🌅',
            timeAgo: '2 hours ago',
          ),
          const PostItem(
            profileImage: 'assets/images/story2.jpg',
            username: 'Sara Ali',
            postImage: 'assets/images/post2.jpg',
            description: 'Adventure is out there ✈🏔',
            timeAgo: '3 hours ago',
          ),
          const PostItem(
            profileImage: 'assets/images/story3.jpg',
            username: 'Ayesha Ahmed',
            postImage: 'assets/images/post3.jpg',
            description: 'Coffee mornings ☕',
            timeAgo: '5 hours ago',
          ),
          const PostItem(
            profileImage: 'assets/images/story4.jpg',
            username: 'Noor',
            postImage: 'assets/images/post4.jpg',
            description: 'Throwback to beach days 🌊',
            timeAgo: '1 day ago',
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}