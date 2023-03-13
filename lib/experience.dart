import 'package:flutter/material.dart';

import 'glpobal.dart';

class experience extends StatefulWidget {
  const experience({Key? key}) : super(key: key);

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {
  GlobalKey<FormState> experienceKey = GlobalKey<FormState>();

  TextEditingController companyController = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController date1Controller = TextEditingController();
  TextEditingController date2Controller = TextEditingController();
  TextEditingController date3Controller = TextEditingController();

  dynamic radioButton;
  bool demo = true;

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
                            "         Experience",
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
                    Padding(padding: EdgeInsets.all(20)),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 520,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Form(
                        key: experienceKey,
                        child: Column(
                          children: [
                            const Padding(padding: EdgeInsets.all(5)),
                            const Align(
                              alignment: Alignment(-1, 0),
                              child: Text(
                                "Company Name",
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
                                  return "Enter First Your Company Nmae...";
                                }
                                return null;
                              },
                              onSaved: (val) {
                                setState(() {
                                  Global.companyName = companyController.text;
                                });
                                print(Global.companyName);
                              },
                              controller: companyController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "New Enterprise,San Francico",
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            const Align(
                              alignment: Alignment(-1, 0),
                              child: Text(
                                "Roles (Optional)",
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
                                  Global.roleinCompany = rolesController.text;
                                });
                                print(Global.roleinCompany);
                              },
                              controller: rolesController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText:
                                    "working with team members to come up with new concepets and product analysis...",
                              ),
                              maxLines: 3,
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                "Employed Status",
                                style: Global.subtitle,
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 140,
                                  color: Colors.white,
                                  child: RadioListTile(
                                      title: Text(
                                        "Priviously Employed",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.blue),
                                      ),
                                      value: 'Priviously Employed',
                                      groupValue: radioButton,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButton = val;
                                          demo = true;
                                        });
                                      }),
                                ),
                                Container(
                                  height: 50,
                                  width: 140,
                                  color: Colors.white,
                                  child: RadioListTile(
                                      title: Text(
                                        "Currently Employed",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.blue),
                                      ),
                                      value: 'Currently Employed',
                                      groupValue: radioButton,
                                      onChanged: (val) {
                                        setState(() {
                                          radioButton = val;
                                          demo = false;
                                        });
                                      }),
                                )
                              ],
                            ),
                            Padding(padding: EdgeInsets.all(10)),
                            Container(
                              height: 1,
                              width: 270,
                              color: Colors.grey,
                            ),
                            Padding(padding: EdgeInsets.all(5)),
                            (demo == true)
                            ? Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Date Joined",style: Global.subtitle,),
                                    Text("Date Exit",style: Global.subtitle,),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 60,
                                      child: TextFormField(
                                        validator: (val){
                                          if(val!.isEmpty) {
                                            return "Enter Date...";
                                          }
                                          return null;
                                        },
                                        onSaved: (val){
                                          setState(() {
                                            Global.date1 = date1Controller.text;
                                          });
                                          print(Global.date1);
                                        },
                                        controller: date1Controller,
                                        decoration: const InputDecoration(
                                          hintText: 'DD/MM/YYYY',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 60,
                                      child: TextFormField(
                                        validator: (val){
                                          if(val!.isEmpty) {
                                            return "Enter Date...";
                                          }
                                          return null;
                                        },
                                        onSaved: (val){
                                          setState(() {
                                            Global.date2 = date2Controller.text;
                                          });
                                          print(Global.date2);
                                        },
                                        controller: date2Controller,
                                        decoration: const InputDecoration(
                                          hintText: 'DD/MM/YYYY',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                            : Column(
                              children: [
                                Text("Date Joined",style: Global.subtitle,),
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  width: 120,
                                  height: 60,
                                  child: TextFormField(
                                    validator: (val){
                                      if(val!.isEmpty) {
                                        return "Enter Date...";
                                      }
                                      return null;
                                    },
                                    onSaved: (val){
                                      setState(() {
                                        Global.date3 = date3Controller.text;
                                      });
                                      print(Global.date3);
                                    },
                                    controller: date3Controller,
                                    decoration: const InputDecoration(
                                      hintText: 'DD/MM/YYYY',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if(experienceKey.currentState!.validate()) {
                              experienceKey.currentState!.save();
                              Navigator.of(context).pop();
                            }
                          },
                          child: Text("Save"),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10)),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            experienceKey.currentState!.reset();

                            companyController.clear();
                            rolesController.clear();
                            date1Controller.clear();
                            date2Controller.clear();
                            date3Controller.clear();
                          },
                          child: Text("Clear"),
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 10)),
                        )
                      ],
                    )
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
