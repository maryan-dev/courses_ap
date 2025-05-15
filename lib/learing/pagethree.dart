import 'package:flutter/material.dart';
import 'package:learing_app/learing/pagefour.dart';
import 'package:learing_app/widgets/eleveting_button.dart';
import 'package:learing_app/widgets/textfeild.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({Key? key}) : super(key: key);

  @override
  _PagethreeState createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  bool isradio = false;
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
        title: Text(
          "LOG IN",
          style: TextStyle(
            fontSize: 19,
            color: Color(0xff874ecf),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                "Learning App",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff874ecf),
                ),
              ),
            ),
            SizedBox(height: 27),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter Your Log In and Details to \naccess your account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff874ecf),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Container(
                    height: 53,
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        backgroundColor: Color(0xff1f06f3),
                        foregroundColor: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () async {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) => Center(
                                          child: CircularProgressIndicator(),
                                        ));
                                await Future.delayed(Duration(seconds: 2));
                                Navigator.of(context).pop(context);
                              },
                              icon: Icon(
                                Icons.facebook_sharp,
                                size: 22,
                              )),
                          Text(
                            "Facebook",
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: 55,
                    width: 170,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        backgroundColor: Color(0xffd54c39),
                        foregroundColor: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () async {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) => Center(
                                          child: CircularProgressIndicator(),
                                        ));
                                await Future.delayed(Duration(seconds: 2));
                                Navigator.of(context).pop(context);
                              },
                              icon: Icon(
                                Icons.g_mobiledata_outlined,
                                size: 39,
                              )),
                          Text(
                            "Google",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.blueAccent,
                  ),
                  hintText: "Enter Your Email",
                  labelText: "Enter Email",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff874ecf)),
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff874ecf), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFieldWidget(
                  hint: "Passworld", label: "Enter Your Passworld"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isradio = !isradio;
                        });
                      },
                      icon: Icon(
                        isradio
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                      ),
                    ),
                    Text(
                      "Reammber Me",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff874ecf),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Passworld",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffd54c39),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            ElevatingButton(
              text: "Login in  with your account ",
              color: Color(0xff874ecf),
              onPressed: () async {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => Center(
                          child: CircularProgressIndicator(),
                        ));
                await Future.delayed(Duration(seconds: 3));
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Pagefour()));
              },
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Doyou Have An otheir account ? ",
                  style: TextStyle(
                    color: Color(0xff874ecf),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Greate account",
                      style: TextStyle(
                        color: Color(0xff1f06f3),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
