import 'package:flutter/material.dart';
import 'package:paynet_clone/screens/main/home/widget/appbar.dart';
import 'package:paynet_clone/screens/main/home/widget/kartalar.dart';
import 'package:paynet_clone/screens/main/home/widget/meing_pulim.dart';
import 'package:paynet_clone/screens/main/home/widget/my_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(height: 25),
              const AppBarC(),
              const SizedBox(height: 27),
              const MeningPulim(),
              const SizedBox(height: 25),
              const Kartalar(),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                height: MediaQuery.of(context).size.height / 3.3,
                child: Row(
                  children: [
                    const MyCard1(),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: double.infinity,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
