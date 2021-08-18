import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _billController;
  late String _percentText1;
  late String _percentText2;
  late String _percentText3;
  late String _percentText4;
  late String _percentText5;
  late String _percentText6;
  late String _percentText7;
  late String _percentText8;
  late String _percentText9;
  late String _percentText10;

  @override
  void initState() {
    super.initState();
    _billController = new TextEditingController(text: "");
    _percentText1 = "0.00";
    _percentText2 = "0.00";
    _percentText3 = "0.00";
    _percentText4 = "0.00";
    _percentText5 = "0.00";
    _percentText6 = "0.00";
    _percentText7 = "0.00";
    _percentText8 = "0.00";
    _percentText9 = "0.00";
    _percentText10 = "0.00";
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.36;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Custom Percent Calculator',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 4,
      ),
      body: new Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(top: 5)),
                TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: new BorderSide(color: Colors.teal),
                      ),
                      hintText: 'Enter Any Number',
                      helperText: 'Enter Number and Tap Calculate',
                      labelText: 'Number',
                      prefixIcon: const Icon(
                        Icons.confirmation_number_outlined,
                        color: Colors.green,
                      ),
                      suffixText: 'Number',
                      suffixStyle: const TextStyle(color: Colors.green)),
                  maxLength: 19,
                  controller: _billController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      _calculate1Percent();
                      _calculate2Percent();
                      _calculate3Percent();
                      _calculate4Percent();
                      _calculate5Percent();
                      _calculate6Percent();
                      _calculate7Percent();
                      _calculate8Percent();
                      _calculate9Percent();
                      _calculate10Percent();
                    },
                    child: Text("Calculate")),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _percentText1,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _percentText2,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "3 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _percentText3,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _percentText4,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "5 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _percentText5,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "6 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _percentText6,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "7 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _percentText7,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "8 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _percentText8,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "9 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _percentText9,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        child: Container(
                          height: 90,
                          width: width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10 Percent",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                _percentText10,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _calculate1Percent() {
    String billTxt = _billController.text;
    String tipTxt = 1.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText1 = "$finalTipAmount";
    });
  }

  void _calculate2Percent() {
    String billTxt = _billController.text;
    String tipTxt = 2.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText2 = "$finalTipAmount";
    });
  }

  void _calculate3Percent() {
    String billTxt = _billController.text;
    String tipTxt = 3.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText3 = "$finalTipAmount";
    });
  }

  void _calculate4Percent() {
    String billTxt = _billController.text;
    String tipTxt = 4.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText4 = "$finalTipAmount";
    });
  }

  void _calculate5Percent() {
    String billTxt = _billController.text;
    String tipTxt = 5.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText5 = "$finalTipAmount";
    });
  }

  void _calculate6Percent() {
    String billTxt = _billController.text;
    String tipTxt = 6.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText6 = "$finalTipAmount";
    });
  }

  void _calculate7Percent() {
    String billTxt = _billController.text;
    String tipTxt = 7.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText7 = "$finalTipAmount";
    });
  }

  void _calculate8Percent() {
    String billTxt = _billController.text;
    String tipTxt = 8.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText8 = "$finalTipAmount";
    });
  }

  void _calculate9Percent() {
    String billTxt = _billController.text;
    String tipTxt = 9.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText9 = "$finalTipAmount";
    });
  }

  void _calculate10Percent() {
    String billTxt = _billController.text;
    String tipTxt = 10.toString();
    billTxt = billTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    tipTxt = tipTxt.replaceAll(new RegExp(r"[^0-9]"), "");
    int bill = int.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String finalTipAmount = "0";
    if (tip <= 100 && tip >= 0 && bill >= 0) {
      double tipAmount = (bill * (tip / 100));
      finalTipAmount = tipAmount.toStringAsFixed(6);
    }
    setState(() {
      _percentText10 = "$finalTipAmount";
    });
  }

  @override
  void dispose() {
    if (!mounted) {
      _billController.dispose();
    }

    super.dispose();
  }
}
