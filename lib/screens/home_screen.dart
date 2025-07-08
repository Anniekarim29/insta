import 'package:flutter/material.dart';
import '../widgets/story_item.dart';
import '../widgets/post_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Instagram dark theme
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
        actions: const [
          Icon(Icons.favorite_border, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.send, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          // STORIES HEADING
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

          // STORIES
          // STORIES
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
                StoryItem(
                  image: 'assets/images/story2.jpg',
                  name: 'Sara Ali',
                ),
                StoryItem(
                  image: 'assets/images/story3.jpg',
                  name: 'Ayesha',
                ),
                StoryItem(
                  image: 'assets/images/story4.jpg',
                  name: 'Sonam',
                ),
                StoryItem(
                  image: 'assets/images/story5.jpg',
                  name: 'Anmol',
                ),
              ],
            ),
          ),


          const Divider(color: Colors.grey),

          // POSTS
          const PostItem(
            profileImage: 'assets/images/story1.jpg',
            username: 'Annie karim',
            postImage: 'assets/images/post1.jpg',
          ),
          const PostItem(
            profileImage: 'assets/images/story2.jpg',
            username: 'Sara Ali',
            postImage: 'assets/images/post2.jpg',
          ),
          const PostItem(
            profileImage: 'assets/images/story3.jpg',
            username: 'Ayesha',
            postImage: 'assets/images/post3.jpg',
          ),
          const PostItem(
            profileImage: 'assets/images/story4.jpg',
            username: 'Noor',
            postImage: 'assets/images/post4.jpg',
          ),
        ],
      ),

      // BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
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
