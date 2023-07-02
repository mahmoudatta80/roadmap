import 'package:attendane_app/lec_absence.dart';
import 'package:attendane_app/qrcode/readqr.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Page_section extends StatefulWidget {
  const Page_section({super.key});

  @override
  State<Page_section> createState() => _Page_sectionState();
}

class _Page_sectionState extends State<Page_section> {
  Text _selectedOption1 = Text('');
  Text _selectedOption2 = Text('');
  Text _selectedOption3 = Text('');
  var qrstr = "let's Scan it";
  var height, width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height / 20,
                      ),
                      height: MediaQuery.of(context).size.height / 15,
                      width: MediaQuery.of(context).size.height / 10,
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(31, 122, 140, 1.0),
                        child: IconButton(
                            color: Colors.white,
                            iconSize: MediaQuery.of(context).size.height / 25,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => yourSubjects()));
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 2.5,
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 50,
                      ),
                      child: Image.asset(
                        "assetss/حضرني.png",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Text(
                'Lab Absence',
                style: TextStyle(
                  color: Color.fromRGBO(31, 122, 140, 1.0),
                  fontSize: MediaQuery.of(context).size.height / 20,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              StreamBuilder(
                stream: FirebaseFirestore.instance.collection('users').doc('123456789').snapshots(),
                builder: (context, snapshot) {
                  if(snapshot.hasData) {
                    if(snapshot.data!['isOpen']) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.height / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(31, 122, 140, 1.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Your Name',
                                  hintStyle: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted: (value) {
                                print(value);
                              },
                              onChanged: ((value) {
                                print(value);
                              }),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          Container(
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.height / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(31, 122, 140, 1.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Your code',
                                  hintStyle: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted: (value) {
                                print(value);
                              },
                              onChanged: ((value) {
                                print(value);
                              }),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 120,
                          ),
                          Container(
                            padding: EdgeInsets.all(0),
                            margin: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.height / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(31, 122, 140, 1.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Section Number',
                                  hintStyle: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height / 40,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              keyboardType: TextInputType.emailAddress,
                              onFieldSubmitted: (value) {
                                print(value);
                              },
                              onChanged: ((value) {
                                print(value);
                              }),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 80,
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  qrstr,
                                  style: TextStyle(
                                      color: Color.fromRGBO(31, 122, 140, 1.0),
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height / 50,
                                ),
                                MaterialButton(
                                    onPressed: scanQr,
                                    child: Icon(Icons.qr_code_scanner,
                                        size: MediaQuery.of(context).size.height / 8,
                                        color: Color.fromRGBO(31, 122, 140, 1.0))),
                                SizedBox(
                                  height: width,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height / 5),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.height / 5.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromRGBO(31, 122, 140, 1.0),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => yourSubjects()),
                                );
                              },
                              child: Text(
                                'confirm',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).size.height / 32,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const Text(
                        'The form is closed',
                        style: TextStyle(
                          color: Color.fromRGBO(31, 122, 140, 1.0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    }
                  } else {
                    return const CircularProgressIndicator(
                      color: Color.fromRGBO(31, 122, 140, 1.0),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}


import 'package:attendane_app/screens/yourSubjects.dart';
import 'package:attendane_app/services/lab_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../shared/colors.dart';

class PageLecScreen extends StatefulWidget {
  const PageLecScreen({super.key});

  @override
  State<PageLecScreen> createState() => _PageLecScreenState();
}

class _PageLecScreenState extends State<PageLecScreen> {
  String qrstr = "let's Scan it";
  String? _name, _academyCode, _durationId, _sectionNo, _codeList;
  List _qrValues = [];
  bool _isLoading = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height / 20,
                        ),
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.height / 10,
                        child: CircleAvatar(
                          backgroundColor: ColorsResources.primaryColor,
                          child: IconButton(
                              color: Colors.white,
                              iconSize: MediaQuery.of(context).size.height / 25,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const YourSubjectsScreen()));
                              },
                              icon: const Icon(Icons.arrow_back)),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 50,
                        ),
                        child: Image.asset(
                          "assetss/حضرني.png",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Text(
                  'Lecutue Absence',
                  style: TextStyle(
                      color: ColorsResources.primaryColor,
                      fontSize: MediaQuery.of(context).size.height / 20),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 30),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorsResources.primaryColor,
                  ),
                  child: TextFormField(
                    onSaved: (value) {
                      _name = value;
                    },
                    decoration: InputDecoration(
                        hintText: 'Your Name',
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 120,
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorsResources.primaryColor,
                  ),
                  child: TextFormField(
                    onSaved: (value) {
                      _academyCode = value;
                    },
                    decoration: InputDecoration(
                        hintText: 'Your code',
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 120),
                Container(
                  padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorsResources.primaryColor,
                  ),
                  child: TextFormField(
                    onSaved: (value) {
                      _sectionNo = value;
                    },
                    decoration: InputDecoration(
                        hintText: 'Section Number',
                        hintStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        qrstr,
                        style: const TextStyle(
                            color: ColorsResources.primaryColor, fontSize: 30),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      MaterialButton(
                          onPressed: scanQr,
                          child: Icon(Icons.qr_code_scanner,
                              size: MediaQuery.of(context).size.height / 8,
                              color: const Color.fromRGBO(31, 122, 140, 1.0))),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 5),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.height / 5.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorsResources.primaryColor,
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      if (_qrValues.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Scan Qr-code first")));
                        return;
                      }
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        try {
                          setState(() {
                            _isLoading = true;
                          });
                          String? result = await LapServices.storeLapApsence(
                              name: _name!,
                              academyCode: _academyCode!,
                              engineerName: _qrValues[1],
                              durationName: _qrValues[0],
                              sectionNo: _sectionNo!,
                              academyYear: _qrValues[4],
                              dayName: _qrValues[3],
                              subjectName: _qrValues[2]);
                          if (result == null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const YourSubjectsScreen()),
                            );
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(result)));
                          }
                          setState(() {
                            _isLoading = false;
                          });
                        } catch (e) {
                          debugPrint("Error at $e");
                          setState(() {
                            _isLoading = false;
                          });
                        }
                      }
                    },
                    child: _isLoading
                        ? const CircularProgressIndicator()
                        : Text(
                      'confirm',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context).size.height / 32,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> scanQr() async {
    try {
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR)
          .then((value) {
        _qrValues = value.split(',').toList();
        setState(() {
          qrstr = value;
        });
      });
    } catch (e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}