import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learing_app/model/dare2.dart';
import 'package:learing_app/model/date.dart';

class Welcompage extends StatefulWidget {
  const Welcompage({Key? key}) : super(key: key);

  @override
  _WelcompageState createState() => _WelcompageState();
}

class _WelcompageState extends State<Welcompage> {
  bool isChecked = false;
  String? selectedValue;

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
              "MY CLASS BOOK ",
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff874ecf),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 163,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,

                mainAxisExtent: 210, // Only one item per row (vertical column)
                mainAxisSpacing:
                    .0, // Horizontal space between items (in horizontal scroll)
                crossAxisSpacing: 3.0, // Vertical space between items
              ),
              scrollDirection: Axis.horizontal, // Horizontal scrolling
              itemCount: courses.length, // Number of items
              itemBuilder: (context, index) {
                var cur = courses[index];
                return Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 1), // Adds more space around items
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 38, 38, 38)
                            .withOpacity(0.09),
                        spreadRadius: 2,
                        blurRadius: 1,
                        offset: const Offset(0, 1), // Shadow position
                      ),
                    ],
                    color: Color.fromARGB(255, 239, 235, 235),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        color: Color.fromARGB(255, 239, 235, 235),
                        child: Image.asset(
                          cur.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        cur.text,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff874ecf),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
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
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        "Select Class ",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff874ecf),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 156,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          color: const Color(0xff874ecf),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Arts drwing",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                            DropdownButton<String>(
                              focusColor: Colors.amberAccent,
                              items:
                                  <String>['1', ' 2', ' 3'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 30.0),
                      child: Text(
                        "Select type  ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff874ecf),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 156,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          color: const Color(0xff874ecf),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Group Study",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            DropdownButton<String>(
                              value: selectedValue,
                              items:
                                  <String>['1', ' 2', ' 3'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Text(
              "Arts &humantaoin",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 119, 35, 223),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              height: 166,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 200, // Reduced mainAxisExtent
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 3.0,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: mycourses.length,
                itemBuilder: (context, index) {
                  var cur = mycourses[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 2), // Reduced margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 38, 38, 38)
                              .withOpacity(0.09),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: const Color.fromARGB(255, 245, 241, 241),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 160, // Reduced width
                          height: 100, // Reduced height
                          color: Color.fromARGB(255, 239, 235, 235),
                          child: Image.asset(
                            cur.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          cur.text,
                          style: const TextStyle(
                            fontSize: 14, // Reduced font size
                            fontWeight: FontWeight.bold,
                            color: Color(0xff874ecf),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0),
                          child: Text(
                            cur.howManyCourses,
                            style: const TextStyle(
                              fontSize: 15, // Reduced font size
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
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    icon: Icon(
                      isChecked
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                    )),
                Text(
                  "Are You Sure  with select class",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 43,
              child: ElevatedButton(
                  onPressed: () {},
                  // onPressed: () async {
                  //   showDialog(
                  //     context: context,
                  //     barrierDismissible: false,
                  //     builder: (context) =>
                  //         Center(child: CircularProgressIndicator()),
                  //   );

                  //   await Future.delayed(Duration(seconds: 2));

                  //   Navigator.of(context).pop();
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => Homecouser(),
                  //   ));

                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff874ecf),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  child: Text(
                    "Back Class Now ",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  )),
            ),
          ),
        ])));
  }
}
