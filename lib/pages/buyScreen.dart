import 'package:annexa/pages/sellscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

import '../widgets/back_button.dart';
import '../widgets/reuseable_text.dart';

class BuyScreen extends StatefulWidget {
  @override
  _BuyScreenState createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  String result = "Let's slide!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const navBack(),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      color: const Color(0xff29214d),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                const ReuseableText(
                                    text: "Quantity",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    wordSpacing: 0),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 5,
                                ),
                                const ReuseableText(
                                    text: "Lot:1",
                                    size: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white60,
                                    wordSpacing: 0),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: const [
                                ReuseableText(
                                    text: "Price",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    wordSpacing: 0),
                                ReuseableText(
                                    text: "Lot:1",
                                    size: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white60,
                                    wordSpacing: 0),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 10, top: 20),
                              height: MediaQuery.of(context).size.height / 12,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: const Color(0xff150c3f),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: ReuseableText(
                                  color: Colors.white,
                                  size: 16,
                                  wordSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  text: '1',
                                ),
                              )),
                          Container(
                              margin: const EdgeInsets.only(left: 10, top: 20),
                              height: MediaQuery.of(context).size.height / 12,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                  color: const Color(0xff150c3f),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: ReuseableText(
                                  color: Colors.white,
                                  size: 16,
                                  wordSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  text: '1566.7',
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
            const Divider(
              thickness: 1,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: ReuseableText(
                  text: "Product",
                  size: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  wordSpacing: 0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  height: MediaQuery.of(context).size.height / 17,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReuseableText(
                              text: "Intraday",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          const ReuseableText(
                              text: "MIS",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0)
                        ],
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  height: MediaQuery.of(context).size.height / 17,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReuseableText(
                              text: "Longterm ",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 0),
                          const ReuseableText(
                              text: "CNC",
                              size: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                              wordSpacing: 0)
                        ],
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1,
                color: Color(0xff29214d),
              ),
            ),
            const ReuseableText(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              wordSpacing: 0,
              size: 16,
              text: "Type",
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  height: MediaQuery.of(context).size.height / 19,
                  width: MediaQuery.of(context).size.width / 4,
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
                      child: const ReuseableText(
                        text: "Market",
                        size: 16,
                        wordSpacing: 0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  height: MediaQuery.of(context).size.height / 19,
                  width: MediaQuery.of(context).size.width / 5.5,
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
                      child: const ReuseableText(
                        text: "Limit",
                        size: 16,
                        wordSpacing: 0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  height: MediaQuery.of(context).size.height / 19,
                  width: MediaQuery.of(context).size.width / 7,
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
                      child: const ReuseableText(
                        text: " SL",
                        size: 16,
                        wordSpacing: 0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 15),
                  height: MediaQuery.of(context).size.height / 19,
                  width: MediaQuery.of(context).size.width / 5,
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
                      child: const ReuseableText(
                        text: " SL-M",
                        size: 16,
                        wordSpacing: 0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.red,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  color: const Color(0xff29214d),
                  borderRadius: BorderRadius.circular(1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ReuseableText(
                      text: "Approx.margin",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                      wordSpacing: 0),
                  const ReuseableText(
                      text: "₹313.10(5x)⟳ ",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                      wordSpacing: 0),
                  const ReuseableText(
                      text: "Approx.margin",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                      wordSpacing: 0)
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SellSreen()));
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
                        child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                      size: 40.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    )),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 70, top: 20),
                      child: Text(
                        "SWIPE TO BUY",
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
        ),
      ),
    );
  }
}
