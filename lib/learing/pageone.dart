import 'package:flutter/material.dart';
import 'package:learing_app/learing/pagetwo.dart';

class Pageone extends StatefulWidget {
  const Pageone({Key? key}) : super(key: key);

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 9), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Pagetwo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0Xfff874ecf),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(
              "Learing App ",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Color(0XFFFffffff)),
            ),
          )
        ],
      ),
    );
  }
}
