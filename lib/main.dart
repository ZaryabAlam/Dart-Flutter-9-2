import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff524e4e),
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Center(
              child: Text(
            "The Lunar",
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontFamily: 'Milton'),
          )),
        ),
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0.007, -0.7),
              child: Container(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/vectors/vector-illustration-of-full-moon-vector-id1016052992?k=20&m=1016052992&s=170667a&w=0&h=G9sfpw2eqSMzY50sYWNAbbGpgPejNYcBArNDK-v20jQ='),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 300,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 250,
                    padding: EdgeInsets.all(7.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60))),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff454141),
                              Color(0xff383535),
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    height: 40,
                    width: 250,
                    padding: EdgeInsets.all(7.0),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white60))),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff454141),
                              Color(0xff383535),
                            ]),
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text("Explore"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff524e4e)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side:
                                        BorderSide(color: Color(0xff383535))))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
