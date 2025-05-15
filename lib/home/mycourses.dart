import 'package:flutter/material.dart';

class Mycourses extends StatefulWidget {
  const Mycourses({Key? key}) : super(key: key);

  @override
  _MycoursesState createState() => _MycoursesState();
}

class _MycoursesState extends State<Mycourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Center(
          child: Text(
            "MY CLASSES",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff874ecf),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          CourseCard(
            imagePath: "assets/prog-removebg-preview.png",
            title: "Arts & Humanities",
            subtitle: "Draw and paint arts",
            progress: 60,
          ),
          CourseCard(
            imagePath: "assets/flat-university-concept.png",
            title: "Arts & Humanities",
            subtitle: "Business & Law",
            progress: 80,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'My Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final int progress;

  const CourseCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff874ecf),
                    ),
                  ),
                  Text(subtitle),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress / 100,
                    backgroundColor: Colors.grey[300],
                    color: const Color(0xff874ecf),
                  ),
                  const SizedBox(height: 4),
                  Text("$progress% Complete"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
