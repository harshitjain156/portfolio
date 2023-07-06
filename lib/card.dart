import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ProjectCard(
            title: 'Project 1',
            description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a metus quis est scelerisque feugiat in at libero.',
            imageUrl: 'assets/project1.jpg', // Replace with project image URL
          ),
          ProjectCard(
            title: 'Project 2',
            description:
            'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.',
            imageUrl: 'assets/project2.jpg', // Replace with project image URL
          ),
          // Add more ProjectCard widgets for additional projects
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: 200.0,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
