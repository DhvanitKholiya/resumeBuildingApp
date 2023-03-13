import 'package:flutter/material.dart';

import 'glpobal.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  GlobalKey<FormState> detailsPageKey = GlobalKey<FormState>();

  TextEditingController birthdateController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();

  dynamic radioButton;
  bool checkBoxEng = false;
  bool checkBoxHin = false;
  bool checkBoxGuj = false;

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
                      const SizedBox(
                        height: 3,
                      ),
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
                            "     Personal Details",
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
                  children: [
                    const Padding(padding: EdgeInsets.all(15)),
                    Container(
                      height: 550,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Form(
                          key: detailsPageKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Padding(padding: EdgeInsets.all(10)),
                              const Align(
                                alignment: Alignment(-0.9, 0),
                                child: Text(
                                  " DOB",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                              Container(
                                width: 250,
                                child: TextFormField(
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return "Enter First Your Birthdate...";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.DOB = birthdateController.text;
                                    });
                                  },
                                  controller: birthdateController,
                                  decoration: const InputDecoration(
                                    hintText: 'DD/MM/YY',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                              const Align(
                                alignment: Alignment(-0.8, 0),
                                child: Text(
                                  "Marital Status",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              RadioListTile(
                                  title: Text(
                                    "Single",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade500),
                                  ),
                                  value: 'Single',
                                  groupValue: radioButton,
                                  onChanged: (val) {
                                    setState(() {
                                      radioButton = val;
                                      Global.maritalStatus = 'Single';
                                    });
                                  }),
                              RadioListTile(
                                  title: Text(
                                    "Married",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade500),
                                  ),
                                  value: 'Married',
                                  groupValue: radioButton,
                                  onChanged: (val) {
                                    setState(() {
                                      radioButton = val;
                                      Global.maritalStatus = 'Married';
                                    });
                                  }),
                              const Align(
                                alignment: Alignment(-0.7, 0),
                                child: Text(
                                  "Language Known",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              CheckboxListTile(
                                  title: Text(
                                    "English",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade500),
                                  ),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  value: checkBoxEng,
                                  onChanged: (val) {
                                    setState(() {
                                      checkBoxEng = val!;
                                      if(checkBoxEng == true) {
                                        Global.languages.add('English');
                                      }
                                      else if (checkBoxEng == false) {
                                        Global.languages.remove('English');
                                      }
                                    });
                                  }),
                              CheckboxListTile(
                                  title: Text(
                                    "Hindi",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade500),
                                  ),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  value: checkBoxHin,
                                  onChanged: (val) {
                                    setState(() {
                                      checkBoxHin = val!;
                                      if(checkBoxHin == true) {
                                        Global.languages.add('Hindi');
                                      }
                                      else if (checkBoxHin == false) {
                                        Global.languages.remove('Hindi');
                                      }
                                    });
                                  }),
                              CheckboxListTile(
                                  title: Text(
                                    "Gujarati",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade500),
                                  ),
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  value: checkBoxGuj,
                                  onChanged: (val) {
                                    setState(() {
                                      checkBoxGuj = val!;
                                      if(checkBoxGuj == true) {
                                        Global.languages.add('Gujarati');
                                      }
                                      else if (checkBoxGuj == false) {
                                        Global.languages.remove('Gujarati');
                                      }
                                    });
                                  }),
                              const Align(
                                alignment: Alignment(-0.8, 0),
                                child: Text(
                                  "Nationality",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                              Container(
                                width: 250,
                                child: TextFormField(
                                  validator: (val) {
                                    if(val!.isEmpty) {
                                      return "Enter First Your Nationality..";
                                    }
                                  },
                                  onSaved: (val){
                                    setState(() {
                                      Global.nationality = nationalityController.text;
                                    });
                                  },
                                  controller: nationalityController,
                                  decoration: const InputDecoration(
                                    hintText: 'INDIAN',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    ElevatedButton(
                        onPressed: () {
                          if(detailsPageKey.currentState!.validate()) {
                            detailsPageKey.currentState!.save();
                            Navigator.of(context).pop();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                        child: Text("Save"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
