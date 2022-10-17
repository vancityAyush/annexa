import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/back_button.dart';
import '../widgets/details_widget.dart';
import '../widgets/reuseable_text.dart';
import 'kyc/kycupdatefirstscreen.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff150c3f),
      appBar: AppBar(
        leading: navBack(),
        backgroundColor: const Color(0xff29214d),
        title: const Text("Account Setting"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KycUpdate()),
              );
            },
            child: const DetailsReuseable(
              icon: Icon(
                Icons.people,
                color: Colors.white,
                size: 50,
              ),
              text: 'KYC Details',
              subtext: 'Manage your KYC,Bank Details etc',
              icons: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.blue,
              ),
              subsubtext: 'KYC PENDING',
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white60,
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.white,
              size: 50,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReuseableText(
                    text: "Profile Details",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
                const Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: const ReuseableText(
                      text: "Manage details,password & security",
                      size: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      wordSpacing: 0),
                ),
              ],
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white60,
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.white,
              size: 50,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ReuseableText(
                    text: "Bank Account",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ReuseableText(
                      text: "Manage bank details",
                      size: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      wordSpacing: 0),
                ),
              ],
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white60,
          ),
        ],
      ),
    );
  }
}
