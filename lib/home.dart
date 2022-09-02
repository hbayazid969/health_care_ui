import 'package:flutter/material.dart';
import 'package:hospital_app_ui/model/mostpopular.dart';
import 'package:hospital_app_ui/widets/hospitalInfo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              'Health Care',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(flex: 2, child: HospitalInfo()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Most Popular'),
              Text('View All'),
            ],
          ),
          Expanded(flex: 1, child: Mostpopular()),
        ],
      ),
    );
  }
}
