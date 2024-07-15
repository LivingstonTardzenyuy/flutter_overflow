import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metrominds/screens/post_jobs.dart';

import '../themes.dart';

class JobListingPage extends StatelessWidget {
  final List<Map<String, dynamic>> jobs = [
    {
      'title': 'Senior Flutter Developer',
      'company': 'Tech Solutions Inc.',
      'location': 'Yaounde',
      'description': 'Develop high-quality mobile applications using Flutter.',
      'positions': 5,
    },
    {
      'title': 'Backend Developer',
      'company': 'Innovatech Ltd.',
      'location': 'Douala',
      'description': 'Design and maintain server-side applications.',
      'positions': 3,
    },
    {
      'title': 'UI/UX Designer',
      'company': 'Creative Minds',
      'location': 'Buea',
      'description': 'Create engaging user interfaces and experiences.',
      'positions': 2,
    },
    // Add more jobs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {
          Get.to(() => PostJobPage());
        },
      ),
      appBar: AppBar(
        title: Text('Job Listings'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: jobs.length,
          itemBuilder: (context, index) {
            final job = jobs[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job['title']!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      job['company']!,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      job['location']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      job['description']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Positions available: ${job['positions']}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ThemesColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            // Add your job details navigation logic here
                          },
                          child: Text(
                            'View Details',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
