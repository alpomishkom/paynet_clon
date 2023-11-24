import 'package:flutter/material.dart';
import 'package:paynet_clone/screens/main/home/widget/appbar.dart';
import 'package:paynet_clone/screens/main/home/widget/kartalar.dart';
import 'package:paynet_clone/screens/main/home/widget/meing_pulim.dart';
import 'package:paynet_clone/screens/main/home/widget/my_cards2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              SizedBox(height: 25),
              AppBarC(),
              SizedBox(height: 23),
              MeningPulim(),
              SizedBox(height: 20),
              Kartalar(),
              MyCards2(),
            ],
          ),
        ),
      ),
    );
  }
}
