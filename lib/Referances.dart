import 'package:flutter/material.dart';

import 'glpobal.dart';

class reference extends StatefulWidget {
  const reference({Key? key}) : super(key: key);

  @override
  State<reference> createState() => _referenceState();
}

class _referenceState extends State<reference> {
  GlobalKey<FormState> referPageKey = GlobalKey();

  TextEditingController referNameController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController instituteController = TextEditingController();

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
                            height: 350,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Form(
                              key: referPageKey,
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Padding(padding: EdgeInsets.all(5)),
                                    const Align(
                                      alignment: Alignment(-0.9,0),
                                      child: Text(
                                        "Referance Name",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                   const Padding(padding: EdgeInsets.all(5)),
                                    TextFormField(
                                      onSaved: (val){
                                        setState(() {
                                          Global.referanceName = val!;
                                        });
                                        //print(Global.referanceName);
                                      },
                                      controller: referNameController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Name of that person",
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.all(10)),
                                    const Align(
                                      alignment: Alignment(-0.9,0),
                                      child: Text(
                                        "Designation",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                   const Padding(padding: EdgeInsets.all(5)),
                                    TextFormField(
                                      onSaved: (val){
                                        setState(() {
                                          Global.occupation = val!;
                                        });
                                        //print(Global.occupation);
                                      },
                                      controller: occupationController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Referance Occupation",
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.all(10)),
                                    const Align(
                                      alignment: Alignment(-0.9,0),
                                      child: Text(
                                        "Organization/Institute",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Padding(padding: EdgeInsets.all(5)),
                                    TextFormField(
                                      onSaved: (val){
                                        setState(() {
                                          Global.organization = val!;
                                        });
                                        //print(Global.organization);
                                      },
                                      controller: instituteController,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Parul University",
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
                                  referPageKey.currentState!.save();
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                ),
                                child: const Text('Save')),
                            OutlinedButton(
                                onPressed: () {
                                  referPageKey.currentState!.reset();

                                  referNameController.clear();
                                  occupationController.clear();
                                  instituteController.clear();
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                ),
                                child: const Text('Clear')),
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
