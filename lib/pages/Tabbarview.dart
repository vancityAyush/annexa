import 'package:annexa/pages/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/back_button.dart';
import 'market.dart';

class TabBarMarket extends StatefulWidget {
  const TabBarMarket({Key? key}) : super(key: key);

  @override
  _TabBarMarketState createState() => _TabBarMarketState();
}

class _TabBarMarketState extends State<TabBarMarket>
    with SingleTickerProviderStateMixin {
  final List<Widget> _tabs = [
    const Center(
      child: Text("SEARCH"),
    ),
    const Center(
      child: Text("MARKET"),
    )
  ];

  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _tabs.length, vsync: this);
    _controller.addListener(() {
      print(_controller.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Color(0xff150c3f),
        appBar: AppBar(
          backgroundColor: Color(0xff29214d),
          leading: const navBack(),
          bottom: TabBar(
            tabs: const [
              Text(
                "SEARCH",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Market",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
            onTap: (index) {
              print(index);
            },
          ),
        ),
        body: TabBarView(
          children: [SearchBar(), Market()],
        ),
      ),
    );
  }
}
