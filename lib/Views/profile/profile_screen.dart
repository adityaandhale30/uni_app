import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Sliver AppBar with Profile Image and Gradient
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  // Gradient Background
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 15, 32, 85),
                          Color.fromARGB(255, 34, 193, 195),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  // Profile Image with Hero Animation
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Hero(
                      tag: 'profile-image',
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 5),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://via.placeholder.com/150'), // Replace with a real profile image
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Main Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name and Title Section
                  _buildNameAndTitle(context),
                  const SizedBox(height: 20),

                  // About Me Section
                  const Text('About Me',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text(
                    'I am a passionate software developer with 5+ years of experience in mobile and web development. '
                    'I specialize in Flutter, React, and backend technologies. I love learning new things and solving complex problems.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),

                  // Stats Section
                  const Text('Stats',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  _buildStats(),
                  const SizedBox(height: 20),

                  // Contact Section
                  const Text('Contact Info',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  _buildContactInfo(),
                  const SizedBox(height: 302),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Name and Title Section
  Widget _buildNameAndTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('John Doe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('Software Developer', style: TextStyle(fontSize: 18)),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('24K Followers',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 4),
            Text('120 Posts',
                style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      ],
    );
  }

  // Stats Section with Icons
  Widget _buildStats() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatItem(Icons.star, 'Projects', '50+'),
        _buildStatItem(Icons.access_time, 'Experience', '5+ years'),
        _buildStatItem(Icons.code, 'Languages', 'Dart, JS, Python'),
      ],
    );
  }

  // Stat Item (Icon + Text)
  Widget _buildStatItem(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.blueAccent),
        const SizedBox(height: 4),
        Text(label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }

  // Contact Info Section
  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(Icons.email, size: 30, color: Colors.blueAccent),
            SizedBox(width: 10),
            Text('johndoe@example.com', style: TextStyle(fontSize: 16)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.phone, size: 30, color: Colors.blueAccent),
            SizedBox(width: 10),
            Text('+1 123 456 7890', style: TextStyle(fontSize: 16)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Icon(Icons.location_on, size: 30, color: Colors.blueAccent),
            SizedBox(width: 10),
            Text('San Francisco, CA, USA', style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
