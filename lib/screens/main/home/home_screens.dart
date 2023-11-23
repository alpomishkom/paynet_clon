import 'package:flutter/material.dart';
import 'package:paynet_clone/screens/main/home/widget/appbar.dart';
import 'package:paynet_clone/screens/main/home/widget/kartalar.dart';
import 'package:paynet_clone/screens/main/home/widget/meing_pulim.dart';

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
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 14,
                          left: 10,
                          right: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                            )
                          ],
                        ),
                        width: 100,
                        child: Column(
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Kartalarim',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 14,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 70),
                            SizedBox(
                              height: 100,
                              width: double.infinity,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    transform: const GradientRotation(1),
                                    colors: [
                                      Colors.blue.shade800,
                                      const Color.fromARGB(255, 142, 182, 250),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            radius: 15,
                                            backgroundImage:
                                                AssetImage('assets/tbc.jpeg'),
                                          ),
                                          const Spacer(),
                                          Image.asset('assets/humo.png',height: 50,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
