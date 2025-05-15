import 'package:flutter/material.dart';
import 'package:learing_app/class/welcompage.dart';
import 'package:learing_app/home/mycourses.dart';
import 'package:learing_app/model/date.dart';

class Homecouser extends StatefulWidget {
  const Homecouser({Key? key}) : super(key: key);

  @override
  _HomecouserState createState() => _HomecouserState();
}

class _HomecouserState extends State<Homecouser> {
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
            " HOME",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff874ecf),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "WELCOM BACK MARYAN MOAHMED ",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0xff874ecf),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Welcompage()));
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xff874ecf),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text(
                        " Back Class",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mycourses()));
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xff874ecf),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: const Text(
                        " My Courses",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            " Lest Class",
            style: TextStyle(
                fontSize: 26,
                color: Color(
                  0xff874ecf,
                ),
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 240, // Adjust height as needed
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Only one item per row (vertical column)
                mainAxisSpacing:
                    20.0, // Horizontal space between items (in horizontal scroll)
                crossAxisSpacing: 10.0, // Vertical space between items
              ),
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              itemCount: courses.length, // Number of items
              itemBuilder: (context, index) {
                var cur = courses[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10), // Adds more space around items
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 38, 38, 38)
                            .withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 18,
                        offset: const Offset(1, 7), // Shadow position
                      ),
                    ],
                    color: const Color.fromARGB(255, 244, 240, 240),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 240,
                        height: 127,
                        color: const Color.fromARGB(255, 244, 240, 240),
                        child: Image.asset(
                          cur.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 105),
                        child: Text(
                          cur.title,
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 15),
                        ),
                      ),
                      Text(
                        cur.text,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff874ecf),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 140.0),
                        child: Text(
                          cur.howManyCourses,
                          style: const TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 131, 83, 190),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
