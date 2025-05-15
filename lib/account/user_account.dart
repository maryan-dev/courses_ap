import 'package:flutter/material.dart';
import 'package:learing_app/learing/pagethree.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Log Out'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pagethree())); // Close the dialog
                // Add your logout logic here
              },
              child: Text('Log Out'),
            ),
          ],
        );
      },
    );
  }

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
            "MY ACCOUNT  ",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff874ecf),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 440,
              height: 130,
              color: Color(0xff864fd0),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: Icon(
                    Icons.person_3,
                    size: 60,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "maryan  mohamed",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    "maryan@gamil.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Text(
              " Accounting Setting ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp)),
          ),
          ListTile(
            leading: Text(
              " Download Options ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp)),
          ),
          ListTile(
            leading: Text(
              " Notification Settings ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp)),
          ),
          ListTile(
            leading: Text(
              " Privacy & Policy ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp)),
          ),
          ListTile(
            leading: Text(
              " Help Center ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ),
          ListTile(
            leading: Text(
              " About Us ",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff874ecf),
                  fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
          ),
          ListTile(
            leading: Text(
              " Delete Account ",
              style: TextStyle(
                  fontSize: 19, color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 19),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff874ecf),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: _showLogoutDialog,
            child: Text("LOG OUT")),
      ),
    );
  }
}
