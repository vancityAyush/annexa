import 'package:annexa/pages/sellbitcoin.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/back_button.dart';
import '../widgets/price_alert.dart';
import '../widgets/reuseable_text.dart';

class PriceAlert extends StatefulWidget {
  @override
  _PriceAlertState createState() => _PriceAlertState();
}

class _PriceAlertState extends State<PriceAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff150c3f),
        appBar: AppBar(
          leading: navBack(),
          backgroundColor: const Color(0xff29214d),
          title: const Text("Create Price alert"),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SellBitCoin()));
          },
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width / 1.0,
                    height: MediaQuery.of(context).size.height / 17,
                    margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xff29214d),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/jpg/coin.jpg",
                              height: 50,
                              width: 50,
                            )),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/png/arrow.png",
                              height: 50,
                              width: 50,
                            )),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width / 1.0,
                  height: MediaQuery.of(context).size.height / 17,
                  margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xff29214d),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Enter Price",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Current Price:2787197.98",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width / 1.0,
                    height: MediaQuery.of(context).size.height / 15,
                    margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Price Alert',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15, top: 10),
                      child: ReuseableText(
                          text: "Coin Name",
                          size: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          wordSpacing: 0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15, top: 10),
                      child: ReuseableText(
                          text: "ALERT PRICE",
                          size: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                          wordSpacing: 0),
                    ),

                    /*  Container(
                      height: 140,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return ReuseAblePriceAlert(
                                image: 'crypto.png',
                                title: 'Bitcoin',
                                icon: Icon(Icons.delete),
                                price: '43768,6');
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              thickness: 2,
                              color: Colors.white,
                            );
                          },
                          itemCount: 7),
                    )*/
                  ],
                ),
                const Divider(
                  color: Colors.white,
                  thickness: .5,
                  endIndent: 15,
                  indent: 20,
                ),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'Gala',
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.white60,
                    ),
                    price: '43768,6'),
                const Divider(
                  color: Colors.white,
                  thickness: 1.5,
                  endIndent: 15,
                  indent: 20,
                ),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'Axie Infinity',
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.white60,
                    ),
                    price: '43768,6'),
                const Divider(
                  color: Colors.white,
                  thickness: .5,
                  endIndent: 15,
                  indent: 20,
                ),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'COSMOS',
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.white60,
                    ),
                    price: '43768,6'),
                const Divider(
                  color: Colors.white,
                  thickness: .5,
                  endIndent: 15,
                  indent: 20,
                ),
                ReuseAblePriceAlert(
                    image: 'bitcoin',
                    title: 'Solana',
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.white60,
                    ),
                    price: '43768,6'),
              ],
            ),
          ]),
        ));
  }

  Widget buildDashedLine() => const Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: const DottedLine(
            dashColor: Colors.white,
            lineThickness: 1,
            dashLength: 4,
            dashGapLength: 5,
          ),
        ),
      );
}
