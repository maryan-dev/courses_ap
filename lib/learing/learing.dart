import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:learing_app/account/user_account.dart';
import 'package:learing_app/class/welcompage.dart';
import 'package:learing_app/home/homecouser.dart';

class Learing extends StatefulWidget {
  const Learing({Key? key}) : super(key: key);

  @override
  _LearingState createState() => _LearingState();
}

class _LearingState extends State<Learing> {
  void update(int index) {
    selctedpage = index;
    setState(() {});
  }

  int selctedpage = 0;

  List<Widget> pagelist = [
    const Welcompage(),
    const Homecouser(),
    const UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagelist[selctedpage],
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 7),
          child: GNav(
            gap: 8,
            backgroundColor: Color.fromARGB(223, 255, 255, 255),
            color: Color(0xff874ecf),
            activeColor: Color(
              0xff874ecf,
            ),
            padding: EdgeInsets.all(18),
            onTabChange: update,
            tabs: [
              GButton(
                icon: Icons.home,
                iconSize: 30,
                // Adding border radius
                iconActiveColor: Color(0xff874ecf),
                backgroundColor: Colors.white38,

                text: "Home",
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                borderRadius: BorderRadius.circular(30),
              ),
              GButton(
                icon: Icons.class_rounded,
                iconSize: 30,
                // Adding border radius
                iconActiveColor: Color(0xff874ecf),
                text: "Class",
                backgroundColor: Colors.white38,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                borderRadius: BorderRadius.circular(30),
              ),
              GButton(
                icon: Icons.person,
                iconSize: 30,
                // Adding border radius
                iconActiveColor: Color(0xff874ecf),

                text: "My Account",
                backgroundColor: Colors.white30,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                borderRadius: BorderRadius.circular(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
