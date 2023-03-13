import 'package:flutter/material.dart';

import 'glpobal.dart';

class project extends StatefulWidget {
  const project({Key? key}) : super(key: key);

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  GlobalKey<FormState> projectKey = GlobalKey<FormState>();

  TextEditingController titleController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController technologiesController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  double height = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
                            "           Projects",
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
                      padding: const EdgeInsets.all(10),
                      height: height,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Form(
                        key: projectKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(padding: EdgeInsets.all(5)),
                            const Align(
                              alignment: Alignment(-1, 0),
                              child: Text(
                                "Project Title",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter First Your Project Title...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.projectTitle = titleController.text;
                                });
                              },
                              controller: titleController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Resume Building App",
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Align(
                              alignment: Alignment(-1, 0),
                              child: Text(
                                "Roles",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                            TextFormField(
                              onSaved: (val) {
                                setState(() {
                                  Global.roles = roleController.text;
                                });
                              },
                              controller: roleController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Organize Team members,Code analysis",
                              ),
                              maxLines: 2,
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Align(
                              alignment: Alignment(-1, 0),
                              child: Text(
                                "Technologies",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                            TextFormField(
                              onSaved: (val) {
                                setState(() {
                                  Global.technologies =
                                      technologiesController.text;
                                });
                              },
                              controller: technologiesController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "5 - Programmers",
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Align(
                              alignment: Alignment(-1, 0),
                              child: Text(
                                "Project Descripation",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                            TextFormField(
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter First Your Project Description...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.projectDescription =
                                      descriptionController.text;
                                });
                              },
                              controller: descriptionController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter Your Project Descripation",
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(20)),
                    ElevatedButton(
                        onPressed: () {
                          if(projectKey.currentState!.validate()) {
                            projectKey.currentState!.save();
                            Navigator.of(context).pop();
                          }
                          setState(() {
                            height+=90;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                        child: Text("Save"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
