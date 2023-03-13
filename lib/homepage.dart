import 'package:flutter/material.dart';

import 'glpobal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return alertbox();
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
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
                        SizedBox(height: 2,),
                        Text(
                          "Resume Builder",
                          style: Global.title,
                        ),
                        Text(
                          "RESUMES",
                          style: Global.title,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                              'Assets/My_Images/open-cardboard-box.png'),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          "No Resumes + Create New Resumes.",
                          style: Global.subtitle,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('menu');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  bool alertbox() {
    AlertDialog(
      title: Text("Are You Sure to Exit ?"),
      actions: [
        OutlinedButton(onPressed: () {
          Navigator.of(context).pop(false);
        }, child: Text("No")),
        ElevatedButton(onPressed: () {
          Navigator.of(context).pop(true);
          },
         child: Text("Yes")),
      ],
    );
    return true;
  }
}