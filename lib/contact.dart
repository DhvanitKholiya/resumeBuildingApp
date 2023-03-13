import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'glpobal.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  bool isContact = true;

  GlobalKey<FormState> contactKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController add3Controller = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  XFile? image;
  File? photo;

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
                      const SizedBox(
                        height: 2,
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
                            "Resume Workspace",
                            style: Global.title,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isContact = true;
                              });
                            },
                            child: const Text(
                              "Contact",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isContact = false;
                              });
                            },
                            child: const Text(
                              "Photo",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: (isContact == true)
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           const Padding(padding: EdgeInsets.all(20)),
                            Container(
                                padding: EdgeInsets.all(10),
                                height: 400,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Form(
                                  key: contactKey,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'Assets/My_Images/user_icon_image-removebg-preview.png',
                                            height: 50,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          SizedBox(
                                            width: 215,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your name first...";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.contactName =
                                                      nameController.text;
                                                });
                                              },
                                              controller: nameController,
                                              decoration: const InputDecoration(
                                                hintText: 'Name',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'Assets/My_Images/mail_image-removebg-preview.png',
                                            height: 50,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                              width: 215,
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter your email first...";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.contactEmail =
                                                        emailController.text;
                                                  });
                                                },
                                                controller: emailController,
                                                keyboardType:
                                                    TextInputType.emailAddress,
                                                decoration: const InputDecoration(
                                                  hintText: 'Email',
                                                ),
                                              )),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'Assets/My_Images/phone image.png',
                                            height: 50,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 215,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your number first...";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.contactPhone =
                                                      phoneController.text;
                                                });
                                              },
                                              controller: phoneController,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                hintText: 'Number',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'Assets/My_Images/location_image-removebg-preview.png',
                                            height: 50,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 215,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your address first...";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.contactAdd =
                                                      add1Controller.text;
                                                });
                                              },
                                              controller: add1Controller,
                                              decoration: const InputDecoration(
                                                hintText: 'Landmark',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                          ),
                                         const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 215,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your address2 first...";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.contactAdd1 =
                                                      add2Controller.text;
                                                });
                                              },
                                              controller: add2Controller,
                                              decoration: const InputDecoration(
                                                hintText: 'City And State Name',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                          ),
                                         const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: 215,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your address3 first...";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.contactAdd2 =
                                                      add3Controller.text;
                                                });
                                              },
                                              controller: add3Controller,
                                              decoration: const InputDecoration(
                                                hintText: 'Pin Code',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            const Padding(padding: EdgeInsets.all(25)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      if (contactKey.currentState!.validate()) {
                                        contactKey.currentState!.save();
                                        setState(() {
                                          isContact = false;
                                        });
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10),
                                    ),
                                    child: const Text('Save')),
                                OutlinedButton(
                                    onPressed: () {
                                      contactKey.currentState!.reset();
                                      nameController.clear();
                                      emailController.clear();
                                      phoneController.clear();
                                      add1Controller.clear();
                                      add2Controller.clear();
                                      add3Controller.clear();
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10),
                                    ),
                                    child: Text('Clear')),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(25),
                              height: 400,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 350,
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CircleAvatar(
                                          radius: 70,
                                          backgroundColor: Colors.black12,
                                          backgroundImage: (photo == null)
                                            ? null
                                              : (FileImage(photo!)),
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                    content:
                                                        const Text("Select Image"),
                                                    actions: [
                                                      ElevatedButton(
                                                          onPressed: () async {
                                                            image = await _picker
                                                                .pickImage(
                                                                    source: ImageSource
                                                                        .camera);
                                                            setState(() {
                                                              photo = File(
                                                                  image!.path);
                                                            });
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: const Icon(Icons
                                                              .camera_alt)),
                                                      ElevatedButton(
                                                          onPressed: () async {
                                                            image = await _picker
                                                                .pickImage(
                                                                    source: ImageSource
                                                                        .gallery);
                                                            setState(() {
                                                              photo = File(
                                                                  image!.path);
                                                            });
                                                            Navigator.of(context).pop();
                                                          },
                                                          child: const Icon(
                                                              Icons.photo)),
                                                    ],
                                                  );
                                                });
                                          },
                                          mini: true,
                                          child: const Icon(
                                            Icons.add,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                           const Padding(padding: EdgeInsets.all(25)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                          Global.pic = photo;
                                          Navigator.of(context).pop();
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 10),
                                    ),
                                    child: const Text('Save')),
                                OutlinedButton(
                                    onPressed: () {
                                        setState(() {
                                          photo = null;
                                        });
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
                ))
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
