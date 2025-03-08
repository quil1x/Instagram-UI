import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('luch.kivnazar'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            _buildProfileHeader(),
            const SizedBox(height: 16),
            _buildBio(),
            const SizedBox(height: 16),
            _buildStoryHighlights(),
            const SizedBox(height: 16),
            const Divider(thickness: 1, color: Colors.grey),
            const SizedBox(height: 16),
            _buildPhotoGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/profile_pic.jpg'),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Luchkiv Nazar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              children: [
                _buildStatColumn('1', 'Posts'),
                const SizedBox(width: 16),
                _buildStatColumn('834', 'Followers'),
                const SizedBox(width: 16),
                _buildStatColumn('162', 'Following'),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(count,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(label),
      ],
    );
  }

  Widget _buildBio() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }

  Widget _buildStoryHighlights() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          _buildHighlight('New'),
        ],
      ),
    );
  }

  Widget _buildHighlight(String label) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 32,
          backgroundColor: Colors.grey,
          child: Icon(Icons.add, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildPhotoGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black,
        );
      },
    );
  }
}
