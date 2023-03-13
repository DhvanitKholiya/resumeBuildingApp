import 'package:flutter/material.dart';

import 'glpobal.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  GlobalKey<FormState> declarationPageKey = GlobalKey<FormState>();

  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  bool switchVal = false;
  double height = 80;

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
                  alignment: Alignment.center,
                  child: Row(
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
                      Text(
                        "                 Declaration",
                        style: Global.title,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(15)),
                      Container(
                        height: height,
                        width: 360,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Form(
                          key: declarationPageKey,
                          child: Column(
                            children: [
                             const Padding(padding: EdgeInsets.all(8)),
                              Row(
                                children: [
                                 const Padding(padding: EdgeInsets.all(5)),
                                 const Text(
                                    "Declaration",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500),
                                  ),
                                 const Spacer(),
                                  Switch(
                                      value: switchVal,
                                      onChanged: (val) {
                                        setState(() {
                                          switchVal = val;
                                          height += 400;
                                          if (switchVal == false) {
                                            height = 80;
                                          }
                                        });
                                      }),
                                ],
                              ),
                              (switchVal == true)
                                  ? SizedBox(
                                height: 400,
                                width: 300,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'Assets/My_Images/archer image.png',
                                          height: 60,
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 270,
                                      child: TextFormField(
                                        validator: (val) {
                                          if(val!.isEmpty) {
                                            return "Enter First Description...";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global.description = descriptionController.text;
                                          });
                                          print(Global.description);
                                        },
                                        controller: descriptionController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Description",
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 1,
                                      width: 280,
                                      decoration:const BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  color: Colors.grey, width: 2))),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: const [
                                        Text(
                                          "Date",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          "Place(Interview\nVenue/City",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 120,
                                          color: Colors.white,
                                          child: TextFormField(
                                            validator: (val) {
                                              if(val!.isEmpty) {
                                                return "Enter First Date...";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.date = dateController.text;
                                              });
                                              print(Global.date);
                                            },
                                            controller: dateController,
                                            keyboardType: TextInputType.datetime,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "DD/MM/YYYY",
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 60,
                                          width: 120,
                                          color: Colors.white,
                                          child: TextFormField(
                                            validator: (val) {
                                              if(val!.isEmpty) {
                                                return "Enter First City...";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.city = cityController.text;
                                              });
                                              print(Global.city);
                                            },
                                            controller: cityController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Eg.Surat",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            if(declarationPageKey.currentState!.validate()) {
                                              declarationPageKey.currentState!.save();
                                              Navigator.of(context).pop();
                                            }
                                          },
                                          child: Text("Save"),
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 50, vertical: 10),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {
                                            declarationPageKey.currentState!.reset();

                                            descriptionController.clear();
                                            dateController.clear();
                                            cityController.clear();
                                          },
                                          child: Text("Clear"),
                                          style: ElevatedButton.styleFrom(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 50, vertical: 10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
