// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_moda_app/card.dart';
import 'package:flutter_moda_app/titlebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
          borderRadius: BorderRadius.circular(15),
        //elevation: 4,
        child: Container(
          height: 50,
          child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: [
              Container(
                width: 30,
                height: 30,
                child: Image.asset('assets/home-icon-silhouette.png'),
              ),
              Container(
                width: 30,
                height: 30,
                child: Image.asset('assets/chat.png'),
              ),
              Container(
                width: 30,
                height: 30,
                child: Image.asset('assets/photo-camera.png'),
              ),
          Container(
            width: 30,
            height: 30,
            child: Image.asset('assets/settings.png'),
          ),
            ],
          ),
        )
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Moda Dünyası',
          style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),

        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 16),
            width: 40,
            height: 40,
            child: Image.asset('assets/messenger.png'),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              TitleBar(),
              CardItem(),
              CardItem(),
              CardItem(),
              CardItem(),

          ],
        ),
      ),
    );
  }
}
