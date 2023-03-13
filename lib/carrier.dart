import 'package:flutter/material.dart';

import 'glpobal.dart';

class carrier extends StatefulWidget {
  const carrier({Key? key}) : super(key: key);

  @override
  State<carrier> createState() => _carrierState();
}

class _carrierState extends State<carrier> {
  GlobalKey<FormState> carrierPageKey = GlobalKey();

  TextEditingController carrierController = TextEditingController();
  TextEditingController designController = TextEditingController();

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
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon:const Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(25)),
                      Text(
                        "    Carrier Objective",
                        style: Global.title,
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Form(
                  key: carrierPageKey,
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(15)),
                      Container(
                        height: 250,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Padding(padding: EdgeInsets.all(15)),
                             const  Align(
                                alignment: Alignment(-0.8, 0),
                                child: Text(
                                  "Carrier Objective",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(15)),
                              SizedBox(
                                width: 310,
                                child: TextFormField(
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return "Enter First Objective...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val){
                                    setState(() {
                                      Global.carrierObjective = val!;
                                    });
                                  },
                                  controller: carrierController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Description",
                                  ),
                                  maxLines: 5,
                                 // minLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                     const Padding(padding: EdgeInsets.all(15)),
                      Container(
                        height: 180,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           const Padding(padding: EdgeInsets.all(5)),
                            const SizedBox(
                              width: 310,
                              child: Text(
                                "Current Designation (Experienced Candidate)",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 310,
                              child: TextFormField(
                                validator: (val){
                                  if(val!.isEmpty) {
                                    return "Enter First Your Line...";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    Global.carrierCurrent = val!;
                                  });
                                },
                                controller: designController,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Software Engineer",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                     const Padding(padding: EdgeInsets.all(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                if(carrierPageKey.currentState!.validate()) {
                                  carrierPageKey.currentState!.save();
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
                                carrierPageKey.currentState!.reset();

                                carrierController.clear();
                                designController.clear();
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                              ),
                              child: const Text('Clear')),
                        ],
                      ),
                    ],
                  ),
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
