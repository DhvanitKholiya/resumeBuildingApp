import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'glpobal.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  final pdf = pw.Document();

  @override
  void initState() {
    final image = pw.MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    super.initState();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Row(
                children: [
                  pw.Container(
                    width: 150,
                    // color: Colors.white,
                    // alignment: Alignment.center,
                    child: pw.Column(
                      children: [
                        pw.Text(
                          "${Global.contactName}",
                          style: pw.TextStyle(
                              fontSize: 15,
                              // color: Colors.blueAccent.shade700,
                              // fontWeight: FontWeight.bold
                          ),
                        ),
                        pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
                       pw.Row(
                          children: [
                            pw.SizedBox(width: 10,),
                            // pw.Image.asset(
                            //   'Assets/My_Images/mail_image-removebg-preview.png',
                            //   height: 15,
                            //   color: Colors.blueAccent.shade700,
                            // ),
                            pw.Padding(padding:pw. EdgeInsets.only(left: 5)),
                            pw.Text(
                              "${Global.contactEmail}",
                              // style: Global.pdfSubText,
                            )
                          ],
                        ),
                        pw.Padding(padding: pw.EdgeInsets.only(bottom: 3)),
                       pw. Row(
                          children: [
                           pw. SizedBox(width: 10,),
                            // pw.Icon(
                            //   Icons.call,
                            //   size: 15,
                            //   // color: Colors.blueAccent.shade700,
                            // ),
                            pw.Padding(padding: pw.EdgeInsets.only(left: 5)),
                            pw.Text(
                              "${Global.contactPhone}",
                              // style: Global.pdfSubText,
                            )
                          ],
                        ),
                        pw.Padding(padding:pw. EdgeInsets.only(bottom: 3)),
                       pw. Row(
                          children: [
                            pw.SizedBox(width: 10,),
                            // pw.Icon(
                            //   Icons.location_on_outlined,
                            //   size: 15,
                            //   color: Colors.blueAccent.shade700,
                            // ),
                            pw.Padding(padding: pw.EdgeInsets.only(left: 5)),
                            pw.Text(
                              "Landmark - ${Global.contactAdd}\nState/City - ${Global.contactAdd1}\nPin Code - ${Global.contactAdd2}",
                              // style: Global.pdfSubText,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  pw.Padding(padding: pw.EdgeInsets.only(left: 70)),
                  pw.Column(
                    children: [
                      pw.Container(
                        height: 80,
                        width: 80,
                        // color: Colors.white,
                        // child: pw.Image(image: image),
                      ),
                    ],
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "OBJECTIVE",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 310,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Column(
                    children: [
                      pw.Text(
                        "${Global.carrierObjective}",
                        // style: Global.pdfSubText,
                      ),
                      pw.Padding(padding: pw.EdgeInsets.only(bottom: 3)),
                      pw.Text(
                        "${Global.carrierCurrent}",
                        // style: Global.pdfSubText,
                      ),
                    ],
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "EDUCATION",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 309,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "${Global.yearSave}",
                    style: pw.TextStyle(
                        fontSize: 8,
                        // color: pw.Colors.grey,
                    ),
                  ),
                  pw.Padding(padding: pw.EdgeInsets.only(left: 78)),
                  pw.Text(
                    "${Global.courseSave}",
                    // style: Global.pdfSubText,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 3)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 109)),
                  pw.Text(
                    "${Global.collageSave}",
                    // style: Global.pdfSubText,
                  )
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 3)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 109)),
                  pw.Text(
                    "${Global.percentageSave}",
                    // style: Global.pdfSubText,
                  )
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "PROJECT",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 320,
                    // color: Colors.blueAccent.shade700,
                  ),
                  pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Text(
                    "${Global.projectTitle}",
                    // style: Global.pdfSubText,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 3)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Text(
                    "${Global.projectDescription}",
                    // style: Global.pdfSubText,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "EXPERIENCES",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 298,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Column(
                    children: [
                      pw.Text(
                        "${Global.companyName}",
                        // style: Global.pdfSubText,
                      ),
                      pw.Text(
                        "${Global.roleinCompany}",
                        // style: Global.pdfSubText,
                      ),
                      pw.Text(
                        "${Global.date1}",
                        // style: Global.pdfSubText,
                      ),
                      pw.Text(
                        "${Global.date2}",
                        // style: Global.pdfSubText,
                      ),
                      pw.Text(
                        "${Global.date3}",
                        // style: Global.pdfSubText,
                      ),
                    ],
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "SKILLS",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 27,
                  ),
                  pw.Container(
                    height: 1,
                    width: 315,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Column(
                    children: Global.technical
                        .map(
                          (e) => pw.Text(
                            "$e",
                            // style: Global.pdfSubText,
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "INTERESTS",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 313,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Column(
                    children: Global.hobby
                        .map((e) => pw.Text(
                              "$e",
                              // style: Global.pdfSubText,
                            ))
                        .toList(),
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "LANGUAGES",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 306,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Column(
                    children: Global.languages
                        .map((e) => pw.Text(
                              "$e",
                              // style: Global.pdfSubText,
                            ))
                        .toList(),
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "PERSONAL\nDETAILS",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 314,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Column(
                    children: [],
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 8)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 10)),
                  pw.Text(
                    "DECLARATION",
                    // style: Global.pdfText,
                  ),
                  pw.SizedBox(
                    width: 10,
                  ),
                  pw.Container(
                    height: 1,
                    width: 298,
                    // color: Colors.blueAccent.shade700,
                  ),
                ],
              ),
              pw.Padding(padding: pw.EdgeInsets.only(bottom: 5)),
              pw.Row(
                children: [
                  pw.Padding(padding: pw.EdgeInsets.only(left: 110)),
                  pw.Text(
                    "${Global.description}",
                    // style: Global.pdfSubText,
                  ),
                ],
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    final image = MemoryImage(File(Global.pic!.path).readAsBytesSync());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                color: Colors.white,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "${Global.contactName}",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                     const Padding(padding: EdgeInsets.only(bottom: 8)),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset(
                          'Assets/My_Images/mail_image-removebg-preview.png',
                          height: 15,
                          color: Colors.blueAccent.shade700,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "${Global.contactEmail}",
                          style: Global.pdfSubText,
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 3)),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.call,
                          size: 15,
                          color: Colors.blueAccent.shade700,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "${Global.contactPhone}",
                          style: Global.pdfSubText,
                        )
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 3)),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Colors.blueAccent.shade700,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Landmark - ${Global.contactAdd}\nState/City - ${Global.contactAdd1}\nPin Code - ${Global.contactAdd2}",
                          style: Global.pdfSubText,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 70)),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.white,
                    child: Image(image: image),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "OBJECTIVE",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 310,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Column(
                children: [
                  Text(
                    "${Global.carrierObjective}",
                    style: Global.pdfSubText,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 3)),
                  Text(
                    "${Global.carrierCurrent}",
                    style: Global.pdfSubText,
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "EDUCATION",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 309,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "${Global.yearSave}",
                style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
              Padding(padding: EdgeInsets.only(left: 78)),
              Text(
                "${Global.courseSave}",
                style: Global.pdfSubText,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 3)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 109)),
              Text(
                "${Global.collageSave}",
                style: Global.pdfSubText,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 3)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 109)),
              Text(
                "${Global.percentageSave}",
                style: Global.pdfSubText,
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "PROJECT",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 320,
                color: Colors.blueAccent.shade700,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 5)),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Text(
                "${Global.projectTitle}",
                style: Global.pdfSubText,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 3)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Text(
                "${Global.projectDescription}",
                style: Global.pdfSubText,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "EXPERIENCES",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 298,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Column(
                children: [
                  Text(
                    "${Global.companyName}",
                    style: Global.pdfSubText,
                  ),
                  Text(
                    "${Global.roleinCompany}",
                    style: Global.pdfSubText,
                  ),
                  Text(
                    "${Global.date1}",
                    style: Global.pdfSubText,
                  ),
                  Text(
                    "${Global.date2}",
                    style: Global.pdfSubText,
                  ),
                  Text(
                    "${Global.date3}",
                    style: Global.pdfSubText,
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "SKILLS",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 27,
              ),
              Container(
                height: 1,
                width: 315,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Column(
                children: Global.technical
                    .map(
                      (e) => Text(
                        "$e",
                        style: Global.pdfSubText,
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "INTERESTS",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 313,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Column(
                children: Global.hobby
                    .map((e) => Text(
                          "$e",
                          style: Global.pdfSubText,
                        ))
                    .toList(),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "LANGUAGES",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 306,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Column(
                children: Global.languages
                    .map((e) => Text(
                          "$e",
                          style: Global.pdfSubText,
                        ))
                    .toList(),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "PERSONAL\nDETAILS",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 314,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Column(
                children: [],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "DECLARATION",
                style: Global.pdfText,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 1,
                width: 298,
                color: Colors.blueAccent.shade700,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 110)),
              Text(
                "${Global.description}",
                style: Global.pdfSubText,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Directory? tempDir = await getExternalStorageDirectory();

          File locate = File('${tempDir!.path}/resume.pdf');

          await locate.writeAsBytes(await pdf.save());
        },
        child:const Icon(
          Icons.download,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
