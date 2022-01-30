import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _billController;
  late String _percentText1;
  late String _percentText15;
  late String _percentText2;
  late String _percentText25;
  late String _percentText3;
  late String _percentText35;
  late String _percentText4;
  late String _percentText5;
  late String _percentText6;
  late String _percentText7;
  late String _percentText8;
  late String _percentText9;
  late String _percentText10;
  late String _percentTextNoProfitLoss;

  @override
  void initState() {
    super.initState();
    _billController = new TextEditingController(text: "");
    _percentText1 = "0.00";
    _percentText2 = "0.00";
    _percentText25 = "0.00";
    _percentText3 = "0.00";
    _percentText35 = "0.00";
    _percentText4 = "0.00";
    _percentText5 = "0.00";
    _percentText6 = "0.00";
    _percentText7 = "0.00";
    _percentText8 = "0.00";
    _percentText9 = "0.00";
    _percentText10 = "0.00";
    _percentText15 = "0.00";
    _percentTextNoProfitLoss = "0.00";
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.3, 0.7, 1],
            colors: [
              Color(0xffE7EFF9),
              Color(0xffD3E0EE),
              Color(0xff999ADC),
              Color(0xffD3E0EE),
            ],
          ),
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          children: <Widget>[
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
                _calculateNoProfitLossPercent();
                _calculate15Percent();
                _calculate25Percent();
                _calculate35Percent();
              },
              child: Text("Calculate"),
            ),
            SizedBox(
              height: 25,
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
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF1ad417),
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.orange[900],
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              "No Profit/Loss:",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          _percentTextNoProfitLoss,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: width,
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
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.tealAccent[700]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "1% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      child: Text(
                        _percentText1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "1.5% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText15,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "2% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _percentText2,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "2.5% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText25,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "3% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText3,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "3.5% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText35,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "4% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _percentText4,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "5% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText5,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "6% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _percentText6,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "7% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText7,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "8% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _percentText8,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "9% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _percentText9,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                color: Colors.tealAccent[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "10% :",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      _percentText10,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _calculate1Percent() {
    String billTxt = _billController.text;
    String tipTxt = 1.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText1 = "$totalamount";
    });
  }

  void _calculate15Percent() {
    String billTxt = _billController.text;
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (1.5 / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText15 = "$totalamount";
    });
  }

  void _calculate2Percent() {
    String billTxt = _billController.text;
    String tipTxt = 2.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText2 = "$totalamount";
    });
  }

  void _calculate25Percent() {
    String billTxt = _billController.text;
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (2.5 / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText25 = "$totalamount";
    });
  }

  void _calculate3Percent() {
    String billTxt = _billController.text;
    String tipTxt = 3.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText3 = "$totalamount";
    });
  }

  void _calculate35Percent() {
    String billTxt = _billController.text;
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (3.5 / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText35 = "$totalamount";
    });
  }

  void _calculate4Percent() {
    String billTxt = _billController.text;
    String tipTxt = 4.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText4 = "$totalamount";
    });
  }

  void _calculate5Percent() {
    String billTxt = _billController.text;
    String tipTxt = 5.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText5 = "$totalamount";
    });
  }

  void _calculate6Percent() {
    String billTxt = _billController.text;
    String tipTxt = 6.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText6 = "$totalamount";
    });
  }

  void _calculate7Percent() {
    String billTxt = _billController.text;
    String tipTxt = 7.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText7 = "$totalamount";
    });
  }

  void _calculate8Percent() {
    String billTxt = _billController.text;
    String tipTxt = 8.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText8 = "$totalamount";
    });
  }

  void _calculate9Percent() {
    String billTxt = _billController.text;
    String tipTxt = 9.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText9 = "$totalamount";
    });
  }

  void _calculateNoProfitLossPercent() {
    String billTxt = _billController.text;
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (0.4 / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentTextNoProfitLoss = "$totalamount";
    });
  }

  void _calculate10Percent() {
    String billTxt = _billController.text;
    String tipTxt = 10.toString();
    double bill = double.parse(billTxt.isNotEmpty ? billTxt : "0");
    int tip = int.parse(tipTxt.isNotEmpty ? tipTxt : "0");
    String totalamount = "0";
    double tipAmount = (bill * (tip / 100));
    totalamount = (bill + tipAmount).toStringAsFixed(20);
    setState(() {
      _percentText10 = "$totalamount";
    });
  }
}
