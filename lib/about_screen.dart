import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green, Colors.blue]),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/pulkit.jpeg"),
                  radius: 70,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pulkit Jindal",
                  style: GoogleFonts.abel(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Software Developer",
                  style: GoogleFonts.abel(
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Looking for fulltime opportunities",
                  style: GoogleFonts.abel(
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.black,
                  height: 2,
                  thickness: 1,
                  indent: 180,
                  endIndent: 180,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 20,
                        ),
                        onPressed: () async {
                          const url = 'https://github.com/Pulkitjndl';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                    SizedBox(width: 4),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.mailBulk,
                          size: 20,
                        ),
                        onPressed: () async {
                          var url =
                              "https://mail.google.com/mail/u/0/#inbox?compose=CllgCJTGmzdcNnMTtQhdpSjrtzrWQZkxnFjczsXdzZrqScqvZJdlfShBcZLKLCCQqlnGtrnhgbB";
                          if (await canLaunch(url)) {
                            launch(url);
                          } else {
                            throw "could not launch";
                          }
                        }),
                    SizedBox(width: 4),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.phone,
                          size: 20,
                        ),
                        onPressed: () async {
                          var url = "tel://9136047446";
                          if (await canLaunch(url)) {
                            launch(url);
                          } else {
                            throw "could not launch";
                          }
                        }),
                    SizedBox(width: 4),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 20,
                        ),
                        onPressed: () async {
                          var url = "";
                          if (await canLaunch(url)) {
                            launch(url);
                          } else {
                            throw "could not launch";
                          }
                        }),
                    SizedBox(width: 4),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 20,
                        ),
                        onPressed: () async {
                          const url =
                              "https://www.linkedin.com/in/pulkit-jindal-669589137/";
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw "Could not launch";
                          }
                        })
                  ],
                ),
                Divider(
                  color: Colors.black,
                  height: 2,
                  thickness: 1,
                  indent: 180,
                  endIndent: 180,
                ),
                Container(
                    height: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10)),
                            new Text(
                              "App Features",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black87),
                            ),
                            Text(
                              " Video zooming/scalling",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black45),
                            ),
                            Text(
                              " video controller Hide/show with one-tap control",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                                "custom option for potait and fullscreen control",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black45)),
                            Text("custom option for mute/volume control",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black45)),
                            Text(
                              "custom option for resrtricting the orientation",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void _enableRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
}
