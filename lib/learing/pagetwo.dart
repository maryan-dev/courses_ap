import 'package:flutter/material.dart';
import 'package:learing_app/learing/pagethree.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({Key? key}) : super(key: key);

  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
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
            )),
      ),
      backgroundColor: const Color(0XFFFffffff),
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/m1-removebg-preview.png',
            width: 1040,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Online learing Platforms",
            style: TextStyle(
                color: Color.fromARGB(255, 136, 59, 231),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              " Welcom This App help To learn anny\n Course You want for freee apps\n languages, otheir  Online learing \nPlatforms",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 50,
            width: 250,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pagethree()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                    backgroundColor: Color(0Xfff874ecf),
                    foregroundColor: Colors.white),
                child: Text(
                  "Get Strated",
                  style: TextStyle(fontSize: 20),
                )),
          )
        ],
      )),
    );
  }
}
