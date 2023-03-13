import 'package:flutter/material.dart';

import 'glpobal.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  GlobalKey<FormState> eduPageKey = GlobalKey();

  TextEditingController course = TextEditingController();
  TextEditingController collage = TextEditingController();
  TextEditingController percentage = TextEditingController();
  TextEditingController year = TextEditingController();

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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(25)),
                          Text(
                            "          Education",
                            style: Global.title,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(20)),
                    Container(
                        padding: EdgeInsets.all(10),
                        height: 500,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Form(
                          key: eduPageKey,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.all(5)),
                                Align(
                                  alignment: Alignment(-0.9,0),
                                  child: Text(
                                    "Course/Degree",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return "Enter First Your course...";
                                    }
                                  },
                                  onSaved: (val){
                                    setState(() {
                                      Global.courseSave = val!;
                                    });
                                  },
                                  controller: course,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "B.Tech Information Technology",
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Align(
                                  alignment: Alignment(-0.9,0),
                                  child: Text(
                                    "School/Collage/Insitute",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return "Enter First Your collage...";
                                    }
                                  },
                                  onSaved: (val){
                                    setState(() {
                                      Global.collageSave = val!;
                                    });
                                  },
                                  controller: collage,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Bhagvan Mahavir University",
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Align(
                                  alignment: Alignment(-0.9,0),
                                  child: Text(
                                    "Last Year Percantage (or) CGPA",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return "Enter First Your Percentage...";
                                    }
                                  },
                                  onSaved: (val){
                                    setState(() {
                                      Global.percentageSave = val!;
                                    });
                                  },
                                  controller: percentage,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "70% (or) 7.00 CGPA",
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Align(
                                  alignment: Alignment(-0.9,0),
                                  child: Text(
                                    "Year Of Pass",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return "Enter First Your Passing Year...";
                                    }
                                  },
                                  onSaved: (val){
                                    setState(() {
                                      Global.yearSave = val!;
                                    });
                                  },
                                  controller: year,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "2019",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                    const Padding(padding: EdgeInsets.all(25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              if(eduPageKey.currentState!.validate()) {
                                eduPageKey.currentState!.save();
                                Navigator.of(context).pop();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                            ),
                            child: const Text('Save')),
                        OutlinedButton(
                            onPressed: () {
                              eduPageKey.currentState!.reset();

                              course.clear();
                              collage.clear();
                              percentage.clear();
                              year.clear();
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10),
                            ),
                            child: Text('Clear')),
                      ],
                    ),
                  ],
                ))),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
