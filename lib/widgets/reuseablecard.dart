import 'package:flutter/material.dart';

import '../utils/util.dart';

class ReuseAbleCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final DateTime date;
  final double quantity;
  final String price;
  final double totalAmount;
  const ReuseAbleCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.date,
      required this.quantity,
      required this.price,
      required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getImage(context, image: image, type: IMAGE_TYPE.jpg),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    date.toString().substring(0, 10),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            /*  crossAxisAlignment: CrossAxisAlignment.end,*/
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  "Qty :$quantity FTM",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  " ₹$price",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  " ₹$totalAmount",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
