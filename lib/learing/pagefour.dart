import 'package:flutter/material.dart';
import 'package:learing_app/learing/learing.dart';
import 'package:learing_app/widgets/continear.dart';

class Pagefour extends StatefulWidget {
  const Pagefour({Key? key}) : super(key: key);

  @override
  _PagefourState createState() => _PagefourState();
}

class _PagefourState extends State<Pagefour> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Learning App ",
              style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Image.asset(
            "assets/mkj-removebg-preview.png",
            width: 1000,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Salect Your Course Lavell",
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ContainerSelection(),
          SizedBox(
            height: 70,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  icon: Icon(
                    isChecked ? Icons.check_box : Icons.check_box_outline_blank,
                  )),
              Text(
                "Are You Sure ",
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 200,
              height: 43,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Learing()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff874ecf),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(39),
                        topRight: Radius.circular(39),
                      ))),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
