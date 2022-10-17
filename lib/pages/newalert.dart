import 'package:annexa/pages/portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

import '../widgets/back_button.dart';
import '../widgets/reuseable_text.dart';

class NewAlert extends StatefulWidget {
  @override
  _NewAlertState createState() => _NewAlertState();
}

class _NewAlertState extends State<NewAlert> {
  String result = "Let's slide!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      appBar: AppBar(
        backgroundColor: const Color(0xff29214d),
        leading: navBack(),
        title: const Text(
          "New alert",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.edit,
                    size: 30,
                    color: Colors.white,
                  ),
                  fillColor: const Color(0xff29214d),
                  filled: true,
                  hintText: 'Alert Name',
                  hintStyle: const TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: const Color(0xff29214d)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: const ReuseableText(
                    text: "Property",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.white,
                  ),
                  fillColor: const Color(0xff29214d),
                  filled: true,
                  hintText: 'Last Traded Price',
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: const Color(0xff29214d)),
                  ),
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: const ReuseableText(
                    text: "Of",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.white,
                  ),
                  fillColor: const Color(0xff29214d),
                  filled: true,
                  hintText: 'Last Traded Price',
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: const ReuseableText(
                    text: "Is",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                  child: TextFormField(
                      decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: Colors.white,
                    ),
                    fillColor: const Color(0xff29214d),
                    filled: true,
                    hintText: 'Greater than or equal to',
                    hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xff29214d)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: const Color(0xff29214d)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Color(0xff29214d)),
                    ),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BuyBitcoin()),
                          );*/
                        },
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.cyanAccent, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: const Color(0xff29214d),
                        child: const Text('Value',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: MaterialButton(
                        elevation: 0,
                        onPressed: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SellBitCoin()),
                          );*/
                        },
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Colors.cyanAccent, width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: const Color(0xff29214d),
                        child: const Text('Instrument',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                  fillColor: const Color(0xff29214d),
                  filled: true,
                  hintText: '7256.5',
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Color(0xff29214d)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: const Color(0xff29214d)),
                  ),
                )),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 15),
                    height: MediaQuery.of(context).size.height / 20,
                    width: MediaQuery.of(context).size.width / 3,
                    child: MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SellBitCoin()),
                          );*/
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: const Color(0xff29214d),
                      child: const Text('0.0   %',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: ReuseableText(
                        text: "of LastTradePrice",
                        size: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Portfolio()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: SlidableButton(
                      width: MediaQuery.of(context).size.width / 1.9,
                      height: MediaQuery.of(context).size.height / 13,
                      buttonWidth: 60.0,
                      color: Colors.cyan,
                      buttonColor: Colors.white,
                      dismissible: false,
                      label: const Center(
                          child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.black,
                        size: 40.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      )),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 70, top: 20),
                        child: Text(
                          "CREATE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                      onChanged: (position) {
                        setState(() {
                          if (position == SlidableButtonPosition.right) {
                            result = 'Button is on the right';
                          } else {
                            result = 'Button is on the left';
                          }
                        });
                      },
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
