import 'package:camscanner_app/Firstpage.dart';
import 'package:camscanner_app/secondpage.dart';
import 'package:camscanner_app/thirdpage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Original  \nimage",
              ),
              Tab(
                text: "Scan \nimage",
              ),
              Tab(
                text: "Draw \nimage",
              ),
            ],
          ),
          title: Text(
            'CamScanner App',style: TextStyle(fontSize: 30,color: Colors.purple),
          ),
        ),
        body: TabBarView(
          children: [
            Firstpage(),
            Secondpage(),
            thirdpage(),
          ],
        ),
      ),
    );
  }
}
