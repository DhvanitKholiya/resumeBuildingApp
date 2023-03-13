import 'package:flutter/material.dart';

import 'glpobal.dart';

class achievements extends StatefulWidget {
  const achievements({Key? key}) : super(key: key);

  @override
  State<achievements> createState() => _achievementsState();
}

class _achievementsState extends State<achievements> {
  List<TextEditingController> allFields = [
    TextEditingController(),
    TextEditingController(),
  ];

  double height = 320;

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
                            "    Achievements",
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "Enter Achievements",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                                fontWeight: FontWeight.bold),
                          ),
                          ...allFields.map((e) => row(controller: e)).toList(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                height += 50;
                                allFields.add(
                                  TextEditingController(),
                                );
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 310,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black26),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.black38,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(80)),
                    ElevatedButton(
                      onPressed: () {
                        Global.achievements = allFields.map((e) => (e.text)).toList();
                        Navigator.of(context).pop();
                        //print(Global.achievements);
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                      ),
                      child: const Text("Save"),
                    ),
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

  Row row({required TextEditingController controller}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10,
        ),
        Expanded(
          flex: 5,
          child: TextFormField(
            controller: controller,
            decoration:
                const InputDecoration(hintText: "Enter Your Achievements"),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              height -= 50;
              allFields.removeAt(allFields.indexOf(controller));
            });
          },
          child: Image.asset(
            "Assets/My_Images/delete.png",
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }
}
