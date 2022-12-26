import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myProjects(lang, title, desc, stars ,gitUrl) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    stars,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      print(gitUrl);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white70,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text(
          "Projects",
          style: TextStyle(color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProjects(
                "Flutter",
                "Click 2 Code",
                "An online compiler",
                "10",
                "https://github",
              ),

              myProjects(
                "Java",
                "Walki Walki",
                "Radio like app for army",
                "9",
                "https://github",
              ),


              myProjects(
                "Java",
                "Walki Walki",
                "Radio like app for army",
                "9",
                "https://github",
              ),

              myProjects(
                "Java",
                "Walki Walki",
                "Radio like app for army",
                "9",
                "https://github",
              ),

            ],
          ),
        ),
      ),
    );
  }
}
