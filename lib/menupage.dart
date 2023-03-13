import 'package:flutter/material.dart';

import 'glpobal.dart';

class menuPage extends StatefulWidget {
  const menuPage({Key? key}) : super(key: key);

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(25)),
                          Text(
                            "Resume Workspace",
                            style: Global.title,
                          ),
                          Padding(padding: EdgeInsets.all(25)),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('pdf');
                              },
                              icon: Icon(
                                Icons.picture_as_pdf,
                                size: 25,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      Text(
                        "Build Options",
                        style: Global.title,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      menuRow('Assets/My_Images/open-cardboard-box.png',
                          'Contact info', 'con'),
                      menuRow('Assets/My_Images/briefcase.png',
                          'Carrier Objective', 'carri'),
                      menuRow('Assets/My_Images/user.png', 'Personal Details',
                          'persnol'),
                      menuRow('Assets/My_Images/mortarboard.png', 'Education',
                          'edu'),
                      menuRow('Assets/My_Images/thinking.png', 'Experiences',
                          'exp'),
                      menuRow(
                          'Assets/My_Images/technical_skills-removebg-preview.png',
                          'Technical Skills',
                          'skill'),
                      menuRow('Assets/My_Images/open-book.png',
                          'Interests/Hobbies', 'hoby'),
                      menuRow(
                          'Assets/My_Images/project.png', 'Projects', 'pro'),
                      menuRow('Assets/My_Images/experience.png', 'Achievements',
                          'achieve'),
                      menuRow('Assets/My_Images/handshake.png', 'References',
                          'refer'),
                      menuRow('Assets/My_Images/declaration.png', 'Declaration',
                          'decla'),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  InkWell menuRow(String image, String text, String pagekey) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(pagekey);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 40,
          ),
          Text(
            text,
            style: Global.menuText,
            textAlign: TextAlign.start,
          ),
          Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}
